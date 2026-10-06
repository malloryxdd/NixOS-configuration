{ ... }:
{
	programs.niri.settings.spawn-at-startup = [
		{ command = [ "noctalia" ]; }
		{ command = [ "niri-shake-cursor" ]; }
	];
}
