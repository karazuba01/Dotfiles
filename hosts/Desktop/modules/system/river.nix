{pkgs ,config, ... }:

{
  

programs.river.enable=true;

 environment.systemPackages = with pkgs; [
   pkgs.river
  
   ];

}




