{ config, pkgs, inputs, ... }:
{
  imports =
    [ 
      ./hardware-configuration.nix
      ./modules/modules.nix
    ];

    environment.pathsToLink = [
	"/share/applications"
	"/share/xdg-desktop-portal"
    ];

  system.stateVersion = "26.05"; # DO NOT UPDATE
}
