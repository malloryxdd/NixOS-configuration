{ inputs, ...}:
{
	programs.kitty = {
		enable = true;
		settings = {
			font-size = 13;
			font-family = "JetBrains Mono Nerd Font";
		};
	};
}
