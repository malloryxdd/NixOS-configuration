{ inputs, ... }:
{
	imports = [
		inputs.noctalia.homeModules.default
	];

	programs.noctalia = {
		enable = true;

		settings = {
			theme.mode = "dark";
			bar.default.position = "top";
			wallpaper = {
				enabled = true;
				fill_mode = "crop";
				fill_color = "#111111";
				transition = ["fade" "wipe" "disc" "stripes" "zoom" "honeycomb"];
				transition_duration = 2500;
				edge_smoothness = 0.3;
				transition_on_startup = false;
				per_monitor_directories = false;
				palette_source = "wallpaper";
				directory = "./wallpapers";
				automation = {
					enabled = true;
					interval_seconds = 600;
					order = "random";
					recursive = true;
				};
			};
			backdrop = {
				enabled = true;
				blur_intensity = 0;
				tint_intensity = 0;
			};
		};
	};
}
