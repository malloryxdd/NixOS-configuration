{ pkgs, ... }:
{
	users.users.medi = {
		isNormalUser = true;
		description = "medi";
		extraGroups = [ "networkmanager" "wheel" "input" ];
		packages = with pkgs; [
			kdePackages.kate
		];
		shell = pkgs.zsh;
	};
}
