{ pkgs, lib, ... }:

let
  niri-shake-cursor = pkgs.buildGoModule rec {
    pname = "niri-shake-cursor";
    version = "unstable";

    src = pkgs.fetchFromGitHub {
      owner = "DavidePrette";
      repo = "niri-shake-cursor";
      rev = "main";
      hash = "sha256-G70v35Y5Ad42X+3vcOrYb+EGqLXin51VaSf4wcqmEPw="; 
    };

    vendorHash = null;

    meta = with lib; {
      description = "macOS-style shake-to-find cursor for the niri Wayland compositor";
      homepage = "https://github.com/DavidePrette/niri-shake-cursor";
      license = licenses.mit;
      mainProgram = "niri-shake-cursor";
    };
  };
in
{
  home.packages = [ niri-shake-cursor ];
}
