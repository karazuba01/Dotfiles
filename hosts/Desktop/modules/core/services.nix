{ pkgs,config, ... }:

{
  systemd.packages = with pkgs; [
  
  ];
  
  # ZRAM
  zramSwap.enable = true;
  zramSwap.algorithm = "zstd";
  
# SV
  hardware.bluetooth.enable=true;
  services.system76-scheduler.enable=true;
  networking.networkmanager.enable = true;
  services.fstrim.enable=true; 
  #services.geoclue2.enable = true;
  #programs.direnv.enable = true;
  #services.upower.enable = true;
  services.gvfs.enable = true;
  services.tumbler.enable = true; 
  #services.printing.enable = true;
  programs.dconf.enable = true;

  services.dbus.enable = true;
  services.dbus.packages = with pkgs; [
  	xfce.xfconf
  	gnome2.GConf
  ];
  services.mpd.enable = true;
  programs.xfconf.enable = true;
  services.fwupd.enable = true;

 

  #services.auto-cpufreq.enable = true;     ### dont need this one.
  # services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];

  environment.systemPackages = with pkgs; [


  ];
}

