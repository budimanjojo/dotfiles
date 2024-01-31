{ config,  ... }:
{
  config = {
    modules = {
      # All of the available modules are listed below
      # Uncomment/comment do enable/disable module
      homelab.diy-keyboard.enable = true;
      homelab.docker.enable = true;

      monitoring.smartd.enable = true;

      program.adb.enable = true;
      program.beeaccounting.enable = true;
      program.hugo.enable = true;
      program.gaming.enable = true;

      shell.fish.enable = true;
      shell.lf.enable = true;
      shell.openssh.enable = true;

      windowmanager.hyprland.enable = true;
      # windowmanager.i3.enable = true;
      # windowmanager.sway.enable = true;
    };

    environment.variables.FLAKE = "${config.deviceCfg.username}/Github/dotfiles";

    boot = {
      initrd.verbose = false;
      consoleLogLevel = 0;
      kernelParams = [ "quiet" ];
      plymouth.enable = true;
      loader = {
        systemd-boot = {
          enable = true;
          memtest86.enable = true;
          configurationLimit = 10;
        };
        timeout = 1;
        efi.canTouchEfiVariables = true;
      };
    };

    networking = {
      firewall = {
        enable = true;
      };
    };
  };
}
