{ ... }:
{
	programs.niri.settings = {
		layer-rules = [
			{
				matches = [
					{
						namespace = "wallpaper";
					}
				];
				place-within-backdrop = true;
			}
		];

		window-rules = [
			{
				matches = [{ app-id = "dev.noctalia.Noctalia"; }];
				open-floating = true;
				default-column-width = { fixed = 1080; };
				default-window-height = { fixed = 920; };
			}
			{
				matches = [{ app-id = "Kitty"; }];
				opacity = 0.85;
			}
			{
				matches = [ {} ];
				clip-to-geometry = true;
			}
		];
	};
}
