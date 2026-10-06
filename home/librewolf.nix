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
			"beacon.enabled" = false;
      			"device.sensors.enabled" = false;
      			"dom.battery.enabled" = false;
      			"dom.event.clipboardevents.enabled" = false;
      			"geo.enabled" = false;
      			"media.peerconnection.enabled" = false;
      			"privacy.clearHistory.enabled" = false;
      			"privacy.firstparty.isolate" = true;
     			"privacy.resistFingerprinting" = false;
			"privacy.trackingprotection.enabled" = true;
			"privacy.trackinprotection.socialtracking.enabled" = true;
			"browser.display.use_document_fonts" = 0;
		};
	};
}
