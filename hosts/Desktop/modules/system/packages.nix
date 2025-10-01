{inputs, config, pkgs, lib ,... }:



{


  nixpkgs.config.allowUnfree = true;

   chaotic.mesa-git.enable = true;

 
  environment.systemPackages = with pkgs; [
 

## Some nix tools 
   pkgs.nh
 
# other internet stuff

   wget
   pkgs.megasync	
   pkgs.telegram-desktop
   pkgs.signal-desktop
   pkgs.youtube-music
   pkgs.transmission_4-gtk
   pkgs.zapzap 
   pkgs.spotify
 

 #### Home Manager

   pkgs.home-manager

# Utilities 

   #pkgs.lazygit
   pkgs.bat
   pkgs.gitui
   git
   pkgs.git-crypt
   btop
   pkgs.keepassxc
   pkgs.bitwarden-desktop
   pkgs.udisks
   pkgs.udiskie
   pkgs.ntfs3g
   pkgs.obs-studio
   pkgs.video-downloader
   pkgs.rar
   pkgs.unrar
   pkgs.p7zip-rar
   pkgs.p7zip
   pkgs.zip
   pkgs.unzip
   pkgs.gpu-viewer

   ### Proggrammming 

   pkgs.gccgo14
   gcc
   gnumake
   pkgs.vimPlugins.fzf-lua
   pkgs.fd
   pkgs.sqlite
   pkgs.fzf
  
  ### networking

  #pkgs.ciscoPacketTracer8
  pkgs.net-tools

   ##Terminals
   
 
   yazi
   ghostty
 

   
   # Code Editors

   pkgs.neovim
   pkgs.luajitPackages.luacheck
   pkgs.lua54Packages.luacheck
   pkgs.vimPlugins.mason-nvim
   pkgs.vimPlugins.mason-tool-installer-nvim
   #pkgs.vimPlugins.mason-lspconfig-nvim
   #pkgs.vimPlugins.mason-null-ls-nvim
   #pkgs.vimPlugins.mason-nvim-dap-nvim
   pkgs.luajitPackages.luarocks-nix
   pkgs.luajitPackages.luarocks
   pkgs.vscode-fhs
  

 ### other-stuff


  pkgs.gimp3-with-plugins

## themes tools gtk ,qt , icons and cursors

   pkgs.nwg-look
   pkgs.gtk-engine-murrine
   pkgs.gtk_engines
   pkgs.adw-gtk3
   pkgs.catppuccin-papirus-folders
   pkgs.catppuccin-cursors
   pkgs.catppuccin-kvantum
   pkgs.rose-pine-icon-theme
    pkgs.qogir-icon-theme
    pkgs.dracula-icon-theme
   pkgs.bibata-cursors


   #Terminal and fetchs
   pkgs.microfetch
   pkgs.starship
  

   ## Polkit
   pkgs.polkit_gnome

  #### Secure Boot
  sbctl
  niv


  ];


  users.users.infexius = {
    isNormalUser = true;
    description = "infexius";
    extraGroups = [ "networkmanager" "wheel" "disk" "power" "video" "libvirtd" ];
    packages = with pkgs; [
      
 
    ];
  };





}
