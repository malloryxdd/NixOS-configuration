{ config, inputs, pkgs, configDir, ... }: 
{
	imports = [
	   inputs.home-manager.nixosModules.home-manager
	];
	home-manager = {
		useGlobalPkgs = true;
		useUserPackages = true;
		extraSpecialArgs = { 
			inherit inputs; 
			inherit configDir;
		};
		users = {
			medi = import ../home/home.nix;
		};
		backupFileExtension = "bckp";
	};
}
