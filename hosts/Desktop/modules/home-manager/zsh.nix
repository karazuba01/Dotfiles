{ config ,pkgs ,lib ,...}:

{

programs.zsh = {
  enable = true;
  enableCompletion = true;
  autosuggestions.enable = true;
  syntaxHighlighting.enable = true;

  shellAliases = {
    ll = "ls -l";
    la = "ls -a";
    flake-update = "nix flake update";
    home-update= " home-manager switch --flake ~/.config/home-manager ";
    clean = "sudo nix-collect-garbage -d";




  };


};


#Zsh as default

 users.defaultUserShell = pkgs.zsh;




}


