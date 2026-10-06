{ inputs, pkgs, ... }:
{
	programs.zsh.enable = true;

	environment.systemPackages = with pkgs; [
		obsidian
		gcc
		cmake
		neovim
		python3
		vim
		godot
		wget
		fastfetch
		kdePackages.dolphin
	];
	programs.nix-ld.enable = true;
}
