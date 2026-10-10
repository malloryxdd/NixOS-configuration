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
		thunar
		mupdf
		xwayland-satellite
		kdePackages.polkit-kde-agent-1
	];
	programs.nix-ld.enable = true;
	programs.xfconf.enable = true;
}
