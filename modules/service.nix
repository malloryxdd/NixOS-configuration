{ lib, pkgs, inputs, config, ... }:
{
	imports = [
		inputs.niri.nixosModules.niri
	];
	
	config = lib.mkMerge [ 
		{
			services.printing.enable = true;
			services.openssh.enable = true;
			services.libinput.enable = true;
			services.upower.enable = true;
			hardware.keyboard.qmk.keychronSupport = true;
		}
		(lib.mkIf (config.profile == "thinkpad") {
			programs.niri.package = pkgs.niri-stable;
			programs.niri.enable = true;
			services.displayManager.sessionPackages = [ pkgs.niri-stable ];
			services.gvfs.enable = true;
			security.polkit.enable = true;
			security.polkit.enablePkexecWrapper = true;
			security.wrappers.pkexec = {
				source = "${pkgs.polkit.outPath}/bin/pkexec";
				owner = "root";
				group = "root";
				setuid = true;
			};
		})
		(lib.mkIf (config.profile == "gaming") {
			services.desktopManager.plasma6.enable = true;
		})
	];
}
