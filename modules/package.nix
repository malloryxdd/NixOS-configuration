{ inputs, pkgs, ... }:
{
	programs.zsh.enable = true;

	environment.systemPackages = with pkgs; [
		obsidian
		gcc
		cmake
		kitty
		neovim
		python3
		vim
		godot
		wget
		fastfetch
	];
}
