{ config, pkgs, ... } : {
	imports = [
		./audio.nix	
		./boot.nix
		./home.nix
		./locales.nix
		./package.nix
		./plasma.nix
		./sddm.nix
		./service.nix
		./settings.nix
		./user.nix
	];
}
