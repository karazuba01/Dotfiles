

{ pkgs, config, lib, ... }:
{
  services.xserver.enable = true;
  services.xserver.videoDrivers = [ "amdgpu" ];

#systemd.tmpfiles.rules = [
 #   "L+    /opt/rocm/hip   -    -    -     -    ${pkgs.rocmPackages.clr}"
 # ];

#environment.variables = {
#  ROC_ENABLE_PRE_VEGA = "1";
#};



# as of 24.11
hardware.graphics = {
  enable = true;
  enable32Bit = true;
};



#24.11 
hardware.graphics.extraPackages = with pkgs; [
  amdvlk
];
# For 32 bit applications 
hardware.graphics.extraPackages32 = with pkgs; [
  driversi686Linux.amdvlk
];



#### LACT 



environment.systemPackages = with pkgs; [ lact ];
systemd.packages = with pkgs; [ lact ];
systemd.services.lactd.wantedBy = ["multi-user.target"];



}


