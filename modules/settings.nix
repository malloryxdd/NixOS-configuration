{ config, pkgs, ... }:
{
	nix.gc = {
		automatic = true;
		dates = "daily";
		options = "--max-old-generations 3";		
	};
	nix.settings.experimental-features = [ "nix-command" "flakes" ];
	nixpkgs.config.allowUnfree = true;
	nix.settings.trusted-users = [ "root" "medi" ];
}
