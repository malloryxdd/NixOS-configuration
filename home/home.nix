{ config, pkgs, ... }:

{
  home.username = "medi";
  home.homeDirectory = "/home/medi";
  programs.home-manager.enable = true;

  imports = [
	./git.nix
	./shell.nix
	./packages.nix
	./niri/default.nix
	./fonts.nix
	./librewolf.nix
	./kitty.nix
  ];

  home.stateVersion = "26.05"; # DO NOT UPDATE!
}
