{ pkgs, ... }:
{
	services.printing.enable = true;
	services.openssh.enable = true;
	services.libinput.enable = true;
	services.upower.enable = true;
	hardware.keyboard.qmk.keychronSupport = true;	
	hardware.bluetooth.enable = true;
}
