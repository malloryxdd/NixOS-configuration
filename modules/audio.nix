{ config, pkgs, ...} : 
{
	services.pulseaudio.enable = false;
	security.rtkit.enable = true;
	services.pipewire = {
		enable = true;
		alsa.enable = true;
		alsa.support32Bit = true;
		pulse.enable = true;
	};
#	services.arctis-sound-manager.enable = true;
}
