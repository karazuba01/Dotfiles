{pkgs ,config, ... }:

{

services.flatpak.enable = true;

 environment.systemPackages = with pkgs; [
    
   ];

  services.flatpak.packages = [
    { appId = "org.gnome.Boxes" ;   origin = "flathub";  }
     "com.vivaldi.Vivaldi "
     "one.ablaze.floorp "
     "com.discordapp.Discord"
     "org.onlyoffice.desktopeditors"
     "org.libreoffice.LibreOffice"
     "network.loki.Session"
  ];



}




