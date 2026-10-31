{ pkgs, ... }:
{
	users.users.medi = {
		isNormalUser = true;
		description = "medi";
		extraGroups = [ "networkmanager" "wheel" "input" ];
		shell = pkgs.zsh;
	};
}
