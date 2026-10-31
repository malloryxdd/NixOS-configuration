{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

     home-manager = {
       url = "github:nix-community/home-manager";
       inputs.nixpkgs.follows = "nixpkgs";
     };

     arctis-sound-manager = {
	url = "github:loteran/Arctis-Sound-Manager?dir=nix";
	inputs.nixpkgs.follows = "nixpkgs";
     };

     nixos-hardware = {
	url = "github:NixOs/nixos-hardware";
	inputs.nixpkgs.follows = "nixpkgs";
     };

     nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-cachyos-kernel = {
    	url = "github:xddxdd/nix-cachyos-kernel";
	inputs.nixpkgs.follows = "nixpkgs";
    };

    plasma-manager = {
	url = "github:nix-community/plasma-manager";
	inputs.nixpkgs.follows = "nixpkgs";
	inputs.home-manager.follows = "home-manager";
    };
  };

  outputs = { self, nixpkgs, nur, nix-cachyos-kernel, ... }@inputs: {
    nixosConfigurations.thinkpad = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [ 
        {
		_module.args.configDir = "/etc/nixos";
		nixpkgs.overlays = [ 
			nur.overlays.default
			nix-cachyos-kernel.overlays.pinned
		];
	}
        hosts/thinkpad/configuration.nix
        inputs.home-manager.nixosModules.default
	inputs.nixos-hardware.nixosModules.lenovo-thinkpad-t470s
      ];
    };
  };
}
