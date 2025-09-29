
{pkgs ,config, ... }:

{
  
## Steam

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  };

programs.gamemode.enable = true;
programs.steam.gamescopeSession.enable = true;

 environment.systemPackages = with pkgs; [
    pkgs.protonplus
    mangohud
    goverlay
    pkgs.heroic-unwrapped
   # pkgs.bottles-unwrapped
    #pkgs.lutris-unwrapped
     pkgs.lutris
     pkgs.wowup-cf


  ];

  
}



