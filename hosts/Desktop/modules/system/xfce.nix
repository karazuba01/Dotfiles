{ config, pkgs, callPackage, ... }:



 {
  
  
    # Enable the X11 windowing system.
 services.xserver.enable = true;

  # Enable the XFCE Desktop Environment.
  #services.xserver.displayManager.lightdm.enable = true;

  services.xserver.desktopManager.xfce.enable = true;



environment = {
    systemPackages = with pkgs; [
      #blueman
      #chromium
      #deja-dup
      #drawing
      elementary-xfce-icon-theme
      evince
      firefox
      foliate
      font-manager
      #gimp-with-plugins
     # pkgs.file-roller
     # gnome-disk-utility
      #inkscape-with-extensions
      libqalculate
      #libreoffice
      orca
      pavucontrol
      qalculate-gtk
      thunderbird
      wmctrl
      xclip
      xcolor
      xcolor
      xdo
      xdotool
     # xfce.catfish
      xfce.gigolo
      xfce.orage
      #xfce.xfburn
      xfce.xfce4-appfinder
      xfce.xfce4-clipman-plugin
      #xfce.xfce4-cpugraph-plugin
      xfce.xfce4-dict
      xfce.xfce4-fsguard-plugin
      xfce.xfce4-genmon-plugin
      xfce.xfce4-netload-plugin
      xfce.xfce4-panel
      xfce.xfce4-pulseaudio-plugin
      xfce.xfce4-systemload-plugin
      #xfce.xfce4-weather-plugin
      xfce.xfce4-whiskermenu-plugin
      xfce.xfce4-xkb-plugin
      xfce.xfdashboard
      xorg.xev
      xsel
      xtitle
      xwinmosaic
      zuki-themes
      pkgs.picom
    ];
  };

programs.thunar.plugins = with pkgs.xfce; [
  thunar-archive-plugin
  thunar-volman
];


#environment.xfce.excludePackages = with pkgs; [
   
  #xfce-terminal


  # ];


}
