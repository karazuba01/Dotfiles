

{ pkgs,config,  ... }:


{


boot.initrd.kernelModules = [ "amdgpu" ];

# Systemd-boot
#boot.loader.systemd-boot.enable = true;
# boot.loader.efi.canTouchEfiVariables = true;
#boot.loader.efi.efiSysMountPoint = "/boot";

# Grub
#boot.loader.grub.enable = true;
#boot.loader.grub.device = "nodev";
#boot.loader.grub.useOSProber = true;
#boot.loader.grub.efiSupport = true;


  boot.loader.systemd-boot = {
    enable = true;
    extraInstallCommands = ''
    

      echo "timeout 40" > /boot/loader/loader.conf
    
      echo "console-mode max" >> /boot/loader/loader.conf
    '';
  };

 ## ##Latest Linux Kernel#####


#boot.kernelPackages = pkgs.linuxPackages_cachyos;
#services.scx.enable = true; # by default uses scx_rustland scheduler


boot.kernelPackages = pkgs.linuxPackages_latest;
#boot.kernelPackages = pkgs.linuxPackages_xanmod_latest;
#boot.kernelPackages = pkgs.linuxPackages_zen;


}



