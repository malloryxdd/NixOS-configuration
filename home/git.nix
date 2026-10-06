{ config, pkgs, lib, ... }:
{
	programs.git = {
		enable = true;
		settings = {
			user.name = "malloryxdd";
			user.email = "paumedinamartin@gmail.com";
			init.defaultBranch = "main";
		};
	};
}
