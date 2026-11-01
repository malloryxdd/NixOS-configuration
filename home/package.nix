{ pkgs, lib, profile, ... }:
{
	home.packages = with pkgs; [
		nerd-fonts.iosevka
		nerd-fonts.jetbrains-mono
		libreoffice
		nordic
		plasmusic-toolbar
		bottles
		kdePackages.kamoso
		stremio-linux-shell
		obs-studio
		vlc
		qbittorrent
		google-chrome
		kdePackages.kdeconnect-kde
		telegram-desktop
		zapzap
		winetricks
		gimp
	]++ lib.optionals (profile == "gaming")[
		steam
		heroic
		protonplus
		retroarch
		discord
	];
}
