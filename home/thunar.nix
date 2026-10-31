{ lib, profile, pkgs, ... }:
{
	config = lib.mkIf (profile == "thinkpad") {
		home.file.".config/xfce4/helpers.rc".text = ''
			TerminalEmulator = kitty
		'';
		home.packages = with pkgs; [
			(thunar.override {
				thunarPlugins = [
					thunar-archive-plugin
					thunar-volman
					thunar-media-tags-plugin
					thunar-vcs-plugin
					thunar-shares-plugin
				];
			})
			file-roller
			xfconf
		];
	};
}
