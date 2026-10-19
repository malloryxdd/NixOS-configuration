{ profile, pkgs, ... }: 
{
	programs.zsh = {
		enable = true;
		autosuggestion.enable = true;
		enableCompletion = true;
		syntaxHighlighting.enable = true;
		shellAliases = {
			nrs = "sudo nixos-rebuild switch --flake /etc/nixos#${profile}";
			nru = "sudo nix flake update && sudo nixos-rebuild switch --flake /etc/nixos#${profile}";
		};	
	};
}
