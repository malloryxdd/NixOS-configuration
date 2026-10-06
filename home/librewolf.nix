{ pkgs, config, ...}:
{
	programs.librewolf = {
		enable = true;
		profiles = {
			${config.home.username}= {
				isDefault = true;
				#extensions.packages = with pkgs.nur.repos.rycee.firefox-addons; [
				#	ublock-origin
				#	darkreader
				#	sponsorblock
				#];
			};
		};
		settings = {
			"privacy.clearHistory.cookiesAndStorage" = false;
			"privacy.clearHistory.siteSettings" = false;
			"privacy.trackingprotection.enabled" = true;
			"privacy.trackinprotection.socialtracking.enabled" = true;
		};
	};
}
