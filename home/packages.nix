{ profile, pkgs, lib, ... }:
{
	home.packages = with pkgs; [
		nerd-fonts.iosevka
		nerd-fonts.jetbrains-mono
		libreoffice
	] ++
	lib.optionals (profile == "thinkpad") (with pkgs; [
		thunar
		kdePackages.polkit-kde-agent-1
	]);
}
