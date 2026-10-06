{ inputs, pkgs, ... }:
{
	programs.zsh.enable = true;

	environment.systemPackages = with pkgs; [
		librewolf
		kitty
		obsidian
		gcc
		cmake
		neovim
		python3
		vim
		git
		godot
		wget
		fastfetch
		kdePackages.dolphin
	];
	programs.nix-ld.enable = true;
}
