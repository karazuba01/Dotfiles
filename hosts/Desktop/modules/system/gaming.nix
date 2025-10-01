
{pkgs ,config, inputs, ... }:

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
     pkgs.lutris
     pkgs.wowup-cf
     inputs.nix-gaming.packages.${pkgs.system}.wine-tkg 
     inputs.nix-gaming.packages.${pkgs.system}.wine-tkg-ntsync 

  ];

  
}



