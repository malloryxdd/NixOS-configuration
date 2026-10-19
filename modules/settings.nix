{ config, pkgs, ... }:
{
	nix.gc = {
		automatic = true;
		dates = "daily";
		options = "--max-old-generations 3";		
	};
	nix.settings = {
		experimental-features = [ "nix-command" "flakes" ];
		trusted-users = [ "root" "medi" ];
		max-jobs = 8;
		auto-optimise-store = true;
	};
	nixpkgs.config.allowUnfree = true;
}
