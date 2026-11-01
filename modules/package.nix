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
		kdePackages.ffmpegthumbs
		kdePackages.kdegraphics-thumbnailers
		kdePackages.kimageformats
		kdePackages.qtimageformats
		kdePackages.taglib
	];
}
