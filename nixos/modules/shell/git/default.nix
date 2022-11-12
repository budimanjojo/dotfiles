{ pkgs, lib, config, ... }:
with lib;
let cfg = config.modules.shell.git;
in {
  options.modules.shell.git = { enable = mkEnableOption "git"; };

  config = mkIf cfg.enable {
    home.manager = {
      programs.git = {
        enable = true;
        userName = "budimanjojo";
        userEmail = "budimanjojo@gmail.com";
        extraConfig = {
          commit = {
            template = "${builtins.toPath ./gitcommit-message}";
          };
        };
      };

      programs.gh.enable = true;
    };
  };
}
