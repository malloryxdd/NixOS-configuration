{ config, lib, ... }:
{
	imports = [
		./hardware-configuration.nix
		../../modules/modules.nix
		#./kernel.nix
	];
	options.profile = lib.mkOption {
		type = lib.types.str;
		default = "gaming";
		description = "system profile";
    };
	config = {
		networking = {
			hostName = "gaming";
			networkmanager.enable = true;
		};
		environment.pathsToLink = [
			"/share/applications"
			"/share/xdg-desktop-portal"
		];
		system.stateVersion = "26.05"; # DO NOT UPDATE
	};
}
