{ config, pkgs, ...}:

let 
	custom-sddm-astronaut = pkgs.sddm-astronaut.override {
		embeddedTheme = "purple_leaves";
	};

in {
	services.displayManager.sddm = {
		enable = true;
		wayland.enable = true;
		theme = "sddm-astronaut-theme";
		extraPackages = with pkgs; [
			kdePackages.qtmultimedia
		]; 
	};

	environment.systemPackages = with pkgs; [
		custom-sddm-astronaut
	];
}
