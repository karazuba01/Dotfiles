{ config ,pkgs ,lib ,...}:

{

#programs.fish.enable = true;


#programs.fish.enable = true;
#  users.extraUsers.myuser = {
#    ...
#    shell = pkgs.fish;
#  };




  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
  };




}


