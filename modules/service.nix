{ pkgs, inputs, ... }:
{
	imports = [
		inputs.niri.nixosModules.niri
	];
	programs.niri.package = pkgs.niri;
	programs.niri.enable = true;
	services.printing.enable = true;
	services.openssh.enable = true;
	services.libinput.enable = true;
	services.upower.enable = true;
	services.gvfs.enable = true;
	hardware.keyboard.qmk.keychronSupport = true;
	security.polkit.enable = true;
	security.polkit.enablePkexecWrapper = true;
	security.wrappers.pkexec = {
		source = "${pkgs.polkit.outPath}/bin/pkexec";
		owner = "root";
		group = "root";
		setuid = true;
	};
}
