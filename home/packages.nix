{ config, pkgs, lib, ... }:
{
	home.packages = with pkgs; [
		nerd-fonts.iosevka
		libreoffice
	];
	fonts.fontconfig.enable = true;
}
