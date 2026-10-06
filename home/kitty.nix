{ inputs, ...}:
{
	programs.kitty = {
		enable = true;
		themeFile = "Catppuccin-Mocha";
		settings.background_opacity = "0.8";
		font = {
			name = "JetBrains Mono Nerd Font";
			size = 12;
		};
	};
}
