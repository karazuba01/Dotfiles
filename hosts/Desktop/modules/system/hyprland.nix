

{ pkgs,config, lib, ... }:

{
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";

#Login Manager 

  services.displayManager.cosmic-greeter.enable = true;



  programs = {
    hyprland = {
      enable = true;
      xwayland = {
        enable = true;
      };
      portalPackage = pkgs.xdg-desktop-portal-hyprland;
    };
  };

 environment.systemPackages = with pkgs; [
   

   at-spi2-atk
   qt6.qtwayland
   psi-notify
   poweralertd
   pkgs.swaynotificationcenter
   playerctl
   pkgs.fuzzel
   grim
   slurp
   imagemagick
   swappy
   ffmpeg_6-full
   wl-clipboard
   cliphist
   xdg-utils
   wtype
   wlrctl
   hyprpicker
   pkgs.rofimoji
   pkgs.rofi
   pkgs.waypaper
   waybar
   hyprlock
   #hypridle
   wlogout
   pkgs.swww
   pkgs.pamixer
   pkgs.networkmanagerapplet
   pkgs.libnotify
   pkgs.kdePackages.qtstyleplugin-kvantum
   pkgs.file-roller
   pkgs.gnome-disk-utility
   pkgs.gnome-calculator
   pkgs.kdePackages.ark
   pkgs.loupe
   pkgs.papers
   pkgs.seahorse
   pkgs.gnome-clocks
   pkgs.mpv-unwrapped
   pkgs.overskride
   pwvucontrol
   blueman
   pkgs.hyprshot
   matugen
   pkgs.pyprland
   zathura
   zoxide
   pkgs.nemo-with-extensions
 
  

];



 
}


