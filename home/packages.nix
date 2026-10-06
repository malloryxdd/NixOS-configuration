{ config, pkgs, lib, ... }:
{
	home.packages = with pkgs; [
		nerd-fonts.iosevka
		nerd-fonts.jetbrains-mono
		libreoffice
	];
}
