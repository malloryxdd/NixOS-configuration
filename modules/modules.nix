{ config, pkgs, ... } : {
	imports = [
		./audio.nix	
		./boot.nix
		./home.nix
		./locales.nix
		./network.nix
		./package.nix
		./polkit-agent.nix
		./sddm.nix
		./service.nix
		./settings.nix
		./user.nix
	];
}
