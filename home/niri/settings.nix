{ pkgs, ... }:
{
	programs.niri.settings = {
		prefer-no-csd = true;
		hotkey-overlay = {
			skip-at-startup = true;
		};
		overview = {
			workspace-shadow.enable = false;
		};
		layout = {
			background-color = "transparent";
			focus-ring = {
				enable = true;
				width = 3;
				active = {
					color = "#FFC87F";
				};
				inactive = {
					color = "#505050";
				};
			};
			gaps = 8;
			center-focused-column = "never";
			default-column-width = { proportion = 0.5; };
			shadow = {
				softness = 30;
				spread = 5;
				offset = {
					x = 0;
					y = 5;
				};
				color = "#0007";
			};
		};
		input = {
			keyboard = {
				xkb.layout = "es";
				repeat-rate = 35;
				repeat-delay = 200;
			};
			touchpad = {
				click-method = "button-areas";
				accel-profile = "adaptive";
				accel-speed = -0.1;
				natural-scroll = false;
				scroll-method = "two-finger";
				dwt = true;
				dwtp = true;
			};
			focus-follows-mouse.enable = false;
			warp-mouse-to-focus.enable = false;
		};
		cursor = {
			size = 24;
		};
	};
}
