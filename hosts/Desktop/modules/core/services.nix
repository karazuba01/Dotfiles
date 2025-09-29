{ pkgs,config, ... }:

{
  systemd.packages = with pkgs; [
  
  ];
  
  
  zramSwap.enable = true;
  zramSwap.algorithm = "zstd";
  hardware.bluetooth.enable=true;
  

 # Security SV

#security.sudo-rs.enable=true;
security.doas.enable = true;
security.sudo.enable = false;
security.doas.extraRules = [{
  users = ["infexius"];
  # Optional, retains environment variables while running commands 
  # e.g. retains your NIX_PATH when applying your config
  keepEnv = true; 
  persist = true;  # Optional, don't ask for the password for some time, after a successfully authentication
}];


  services.fail2ban.enable = true;
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

  # services.openssh.enable = true;

  #services.auto-cpufreq.enable = true;     ### dont need this one.
  # services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];

  environment.systemPackages = with pkgs; [


  ];
}

