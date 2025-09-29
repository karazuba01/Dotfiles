

{ config, self , pkgs, inputs,lib ,... }:

{
  imports =
    [ 
     
      /etc/nixos/hardware-configuration.nix
      ./modules/core/services.nix
      ./modules/core/firewall.nix
      ./modules/core/polkit.nix
      ./modules/core/sound.nix
      ./modules/system/upgrade-store.nix
      ./modules/core/amd.nix
      ./modules/core/gtklock.nix
      ./modules/home-manager/ssh.nix
      ./modules/core/gpg.nix
      ./modules/core/locales.nix
      ./modules/system/packages.nix
      ./modules/core/bootloader.nix
      ./modules/system/vm.nix
      ./modules/system/podman.nix
      ./modules/system/steam.nix
      ./modules/system/hyprland.nix   
      ./modules/home-manager/zsh.nix
      ./modules/system/flatpak.nix
      ./modules/core/greetd.nix
      ./modules/core/fonts.nix   
    
    ];



    
  environment.sessionVariables = {
    NH_FLAKE = "/home/infexius/Nix";
  };



    nix.settings.experimental-features = ["nix-command" "flakes"];
    nix.settings.download-buffer-size = 524288000;
    system.stateVersion = "25.11";



}
