{ config, pkgs, lib, ... }:

let
  apps = import ./apps.nix { inherit pkgs; };

  # Extraemos la librería de acciones a una variable local
  niriActions = config.lib.niri.actions;

  # Helper para noctal.ia usando las acciones extraídas
  noctalia = cmd:
    niriActions.spawn "noctalia" ([ "msg" ] ++ (lib.splitString " " cmd));
in
{
  programs.niri.settings.binds = with niriActions; {
    "Mod+Shift+P".action.power-off-monitors = [];

    "XF86AudioRaiseVolume".action = noctalia "volume-up";
    "XF86AudioLowerVolume".action = noctalia "volume-down";
    "XF86AudioMute".action        = noctalia "volume-mute";
    "XF86AudioPlay".action        = noctalia "media toggle";
    "XF86AudioNext".action        = noctalia "media next";
    "XF86AudioPrev".action        = noctalia "media previous";

    "XF86MonBrightnessUp".action   = noctalia "brightness-up";
    "XF86MonBrightnessDown".action = noctalia "brightness-down";

    "Mod+Space".action = noctalia "panel-toggle launcher";
    "Mod+Q".action = close-window;
    "Mod+B".action = spawn apps.browser;
    "Mod+T".action = spawn apps.terminal;
    "Mod+D".action = spawn apps.fileManager;
    "Mod+L".action = noctalia "session lock";

    "Mod+F".action       = maximize-column;
    "Mod+Shift+F".action = fullscreen-window;
    "Mod+O".action       = toggle-overview;

    "Mod+Left".action  = focus-column-left;
    "Mod+Down".action  = focus-window-down;
    "Mod+Up".action    = focus-window-up;
    "Mod+Right".action = focus-column-right;

    "Mod+Ctrl+Left".action  = move-column-left;
    "Mod+Ctrl+Down".action  = move-window-down;
    "Mod+Ctrl+Up".action    = move-window-up;
    "Mod+Ctrl+Right".action = move-column-right;

    "Mod+Home".action      = focus-column-first;
    "Mod+End".action       = focus-column-last;
    "Mod+Ctrl+Home".action = move-column-to-first;
    "Mod+Ctrl+End".action  = move-column-to-last;

    "Mod+Shift+Ctrl+Left".action  = move-column-to-monitor-left;
    "Mod+Shift+Ctrl+Right".action = move-column-to-monitor-right;

    "Mod+U".action       = focus-workspace-down;
    "Mod+I".action       = focus-workspace-up;
    "Mod+Ctrl+U".action  = move-column-to-workspace-down;
    "Mod+Ctrl+I".action  = move-column-to-workspace-up;

    "Mod+1".action = focus-workspace 1;
    "Mod+2".action = focus-workspace 2;
    "Mod+3".action = focus-workspace 3;

    "Mod+Shift+1".action.move-column-to-workspace = 1;
    "Mod+Shift+2".action.move-column-to-workspace = 2;
    "Mod+Shift+3".action.move-column-to-workspace = 3;

    "Mod+C".action = center-column;
    "Mod+W".action = toggle-column-tabbed-display;

    "Print".action.screenshot = [];
    "Ctrl+Print".action.screenshot-screen = [];
    "Alt+Print".action.screenshot-window = [];

    "Mod+Escape".action = toggle-keyboard-shortcuts-inhibit;
  };
}
