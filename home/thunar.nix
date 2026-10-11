{ lib, profile, ... }:
{
	config = lib.mkIf (profile == "thinkpad") {
		home.file.".config/xfce4/helpers.rc".text = ''
			TerminalEmulator = kitty
		'';
	};
}
