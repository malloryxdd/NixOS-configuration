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
	hardware.keyboard.qmk.keychronSupport = true;
}
