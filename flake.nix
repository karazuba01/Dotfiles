{
  description = "My-Flake-Nix";

  inputs = {




    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable"; 
    nixpkgs-stable.url = "github:nixos/nixpkgs/release-25.05";  
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable"; 
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
    nix-gaming.url = "github:fufexan/nix-gaming"; 


      
        home-manager = {
       url = "github:nix-community/home-manager";
       inputs.nixpkgs.follows = "nixpkgs";
     };
};


  outputs = { self, nixpkgs, nix-gaming, chaotic, home-manager, nix-flatpak,  ... }@inputs: {

  nixosConfigurations.Desktop= nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
       specialArgs = {inherit self  inputs;};
    modules = [ 
	  ./hosts/Desktop/configuration.nix
	      chaotic.nixosModules.default 
	      nix-flatpak.nixosModules.nix-flatpak



	];

     };	

#  nixosConfigurations.nelson = nixpkgs.lib.nixosSystem {
#        system = "x86_64-linux";
#       specialArgs = {inherit self  inputs;};
#    modules = [ 
#	  ./hosts/nelson/configuration.nix
#
#
#
#	];
#
#     };	



  #nixosConfigurations.laptop = nixpkgs.lib.nixosSystem {
  #      system = "x86_64-linux";
  #     specialArgs = {inherit self  inputs;};
  #  modules = [ 
	#  ./hosts/laptop/configuration.nix
#
#
#
#	];
#
#     };	



       homeConfigurations = {
        infexius  = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages."x86_64-linux";
          modules = [ ./home.nix ];
        };
      };



  };
}
