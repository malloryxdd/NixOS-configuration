{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

     home-manager = {
       url = "github:nix-community/home-manager";
       inputs.nixpkgs.follows = "nixpkgs";
     };

     niri = {
	url = "github:sodiboo/niri-flake";
	inputs.nixpkgs.follows = "nixpkgs";
     };

     noctalia = {
	url = "github:noctalia-dev/noctalia";
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
  };

  outputs = { self, nixpkgs, nur, ... }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [ 
        {
		_module.args.configDir = "/etc/nixos";
		nixpkgs.overlays = [ nur.overlays.default ];
	}
        ./configuration.nix
        inputs.home-manager.nixosModules.default
	inputs.nixos-hardware.nixosModules.lenovo-thinkpad-t470s
      ];
    };
  };
}
