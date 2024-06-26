{
  lib,
  config,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.modules.homelab.diy-keyboard;
in
{
  options.modules.homelab.diy-keyboard = {
    enable = mkEnableOption "diy-keyboard";
  };
  config = mkIf cfg.enable {
    virtualisation.docker.enable = true;
    # needed for qmk udev rule
    users.groups.plugdev = { };
    users.users.${config.deviceCfg.username}.extraGroups = [
      "plugdev"
      "docker"
    ];
    hardware.keyboard.qmk.enable = true;
    services.udev.packages = with pkgs; [ via ];
  };
}
