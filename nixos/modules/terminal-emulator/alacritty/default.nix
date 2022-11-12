{ pkgs, lib, config, ... }:
with lib;
let 
  cfg = config.modules.terminal-emulator.alacritty;
in {
  options.modules.terminal-emulator.alacritty = { enable = mkEnableOption "alacritty"; };

  config = mkIf cfg.enable {
    home.manager.programs.alacritty = {
      enable = true;
      settings = {
        env.TERM = "xterm-256color";
        window = {
          dimensions = {
            columns = 0;
            lines = 0;
          };
          padding = {
            x = 10;
            y = 10;
          };
        };
        scrolling.history = 10000;
        font.normal = {
          family = "UbuntuMono Nerd Font";
          style = "Regular";
          size = 13.0;
        };
        draw_bold_text_with_bright_colors = false;
        colors = {
          primary = {
            background = "#1A1B26";
            foreground = "#C0CAF5";
          };
          normal = {
            black = "#15161E";
            red = "#F7768E";
            green = "#9ECE6A";
            yellow = "#E0AF68";
            blue = "#7AA2F7";
            magenta = "#BB9AF7";
            cyan = "#7DCFFF";
            white = "#A9B1D6";
          };
          bright = {
            black = "#414868";
            red = "#F7768E";
            green = "#9ECE6A";
            yellow = "#E0AF68";
            blue = "#7AA2F7";
            magenta = "#BB9AF7";
            cyan = "#7DCFFF";
            white = "#C0CAF5";
          };
          indexed_colors = [
            { index = 16; color = "#FF9E64"; }
            { index = 17; color = "#DB4B4B"; }
          ];
        };
        bell.duration = 0;
        live_config_reload = true;
        key_bindings = [
          { key = "V"; mods = "Control|Shift"; action = "Paste"; }
          { key = "C"; mods = "Control|Shift"; action = "Copy"; }
          { key = "Insert"; mods = "Shift"; action = "PasteSelection"; }
          { key = "Key0"; mods = "Control"; action = "ResetFontSize"; }
          { key = "Equals"; mods = "Control"; action = "IncreaseFontSize"; }
          { key = "NumpadAdd"; mods = "Control"; action = "IncreaseFontSize"; }
          { key = "NumpadSubtract";  mods = "Control"; action = "DecreaseFontSize"; }
          { key = "Minus"; mods = "Control"; action = "DecreaseFontSize"; }
          { key = "Paste"; action = "Paste"; }
          { key = "Copy"; action = "Copy"; }
          { key = "L"; mods = "Control"; action = "ClearLogNotice"; }
          { key = "L"; mods = "Control"; chars = "\x0c"; }
          { key = "Home"; mods = "Alt"; chars = "\x1b[1;3H"; }
          { key = "Home"; chars = "\x1bOH"; mode = "AppCursor";  }
          { key = "Home"; chars = "\x1b[H"; mode = "~AppCursor"; }
          { key = "End"; mods = "Alt"; chars = "\x1b[1;3F"; }
          { key = "End"; chars = "\x1bOF"; mode = "AppCursor"; }
          { key = "End"; chars = "\x1b[F"; mode = "~AppCursor"; }
          { key = "PageUp"; mods = "Shift"; action = "ScrollPageUp"; mode = "~Alt"; }
          { key = "PageUp"; mods = "Shift"; chars = "\x1b[5;2~"; mode = "Alt"; }
          { key = "PageUp"; mods = "Control"; chars = "\x1b[5;5~"; }
          { key = "PageUp"; mods = "Alt"; chars = "\x1b[5;3~"; }
          { key = "PageUp"; chars = "\x1b[5~"; }
          { key = "PageDown"; mods = "Shift"; action = "ScrollPageDown"; mode = "~Alt"; }
          { key = "PageDown"; mods = "Shift"; chars = "\x1b[6;2~"; mode = "Alt"; }
          { key = "PageDown"; mods = "Control"; chars = "\x1b[6;5~"; }
          { key = "PageDown"; mods = "Alt"; chars = "\x1b[6;3~"; }
          { key = "PageDown"; chars = "\x1b[6~"; }
          { key = "Insert"; chars = "\x1b[2~"; }
          { key = "Delete"; chars = "\x1b[3~"; }
          { key = "Left"; chars = "\x1b[D"; mode = "~AppCursor"; }
          { key = "Left"; chars = "\x1bOD"; mode = "AppCursor"; }
          { key = "Right"; chars = "\x1b[C"; mode = "~AppCursor"; }
          { key = "Right"; chars = "\x1bOC"; mode = "AppCursor"; }
          { key = "Up"; chars = "\x1b[A"; mode = "~AppCursor"; }
          { key = "Up"; chars = "\x1bOA"; mode = "AppCursor"; }
          { key = "Down"; chars = "\x1b[B"; mode = "~AppCursor"; }
          { key = "Down"; chars = "\x1bOB"; mode = "AppCursor"; }
          { key = "NumpadEnter"; chars = "\n"; }
        ];
      };
    };
  };
}
