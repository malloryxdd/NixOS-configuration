{ inputs, pkgs, ... }:
{
	programs.zsh.enable = true;

	environment.systemPackages = with pkgs; [
		obsidian
		gcc
		gvfs
		cmake
		kitty
		neovim
		python3
		vim
		godot
		wget
		fastfetch
		thunar
		mupdf
		xwayland-satellite
	];
	programs.nix-ld.enable = true;
	programs.xfconf.enable = true;
}
