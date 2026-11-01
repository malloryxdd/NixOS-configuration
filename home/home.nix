{ config, pkgs, ... }:

{
  home.username = "medi";
  home.homeDirectory = "/home/medi";
  programs.home-manager.enable = true;

  imports = [
	./git.nix
	./shell.nix
	./package.nix
	./plasma.nix
	./librewolf.nix
	./kitty.nix
	./spicetify.nix
  ];

  home.stateVersion = "26.05"; # DO NOT UPDATE!
}
