{ configDir, inputs, pkgs, ... }:
{
	imports = [ inputs.plasma-manager.homeModules.plasma-manager ];
	programs.plasma = {
		enable = true;

		workspace = {
			clickItemTo = "select";
			widgetStyle = "MS Windows 9x";
			colorScheme = "nordicbluish";
			cursor.theme = "Nordic-cursors";
			iconTheme = "Nordic-bluish";
			splashScreen.theme = "Nordic-bluish";
			wallpaperSlideShow = {
				path = "${configDir}/home/wallpapers";
				interval = 450;
			};
		};

		panels = [
			{
				location = "bottom";
				height = 45;
				floating = false;
				hiding = "dodgewindows";
				screen = "all";
				lengthMode = "fit";
				widgets = [
					{
						kickoff = {
							icon = "nix-snowflake-white";
							sortAlphabetically = true;
						};
					}
					{
						iconTasks = {
							launchers = [
								"applications:org.kde.dolphin.desktop"
								"applications:systemsettings.desktop"
								"applications:librewolf.desktop"
								"applications:spotify.desktop"
								"applications:discord.desktop"
							];
							appearance.showTooltips = true;
						};
					}
					{
						name = "plasmusic-toolbar";
						config.General = {
							preferredSource = "spotify";
						};
					}
					"org.kde.plasma.systemtray"
					{
						digitalClock = {
							date.enable = false;
							time.format = "24h";
							calendar.firstDayOfWeek = "monday";
						};
					}
				];
			}
		];

		fonts = {
			general = {
				family = "Iosevka Nerd Font";
				pointSize = 16;
			};
			fixedWidth = {
				family = "Iosevka Nerd Font";	
				pointSize = 16;
			};
			windowTitle = {
				family = "Iosevka Nerd Font";
				pointSize = 16;
			};
			small = {
				family = "Iosevka Nerd Font";
				pointSize = 14;
			};
			menu = {
				family = "Iosevka Nerd Font";
				pointSize = 16;
			};
		};
	};
}
