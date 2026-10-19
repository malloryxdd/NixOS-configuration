{ config, pkgs, inputs, lib, ... }:
{
  imports =
    [ 
      ./hardware-configuration.nix
      ../../modules/modules.nix
    ];


    options.profile = lib.mkOption {
	type = lib.types.str;
	default = "thinkpad";
	description = "system profile";
    };
	
    config = {
	networking = {
		hostName = "thinkpad";
		networkmanager.enable = true;
    	};
	environment.pathsToLink = [
		"/share/applications"
		"/share/xdg-desktop-portal"
    	];

  	system.stateVersion = "26.05"; # DO NOT UPDATE
    };
    
}
