

{config, ... }:

{
  

  ### Nix Package Management 
  
  nix.settings.auto-optimise-store = true;
nix.gc = {
  automatic = true;
  dates = "weekly";
  options = "--delete-older-than 5d";
};

  
  ## Automatic updates

  #system.autoUpgrade = {
   # enable=true;
    #channel="https://nixos.org/channels/nixos-24.11";
  #};


  
}

