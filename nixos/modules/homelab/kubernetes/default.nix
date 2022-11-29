{ lib, config, pkgs, ... }:

with lib;
let
  cfg = config.modules.homelab.kubernetes;
  packages = pkgs // pkgs.callPackage ./custom-packages.nix {};
in {
  options.modules.homelab.kubernetes = { enable = mkEnableOption "kubernetes"; };
  config = mkIf cfg.enable {
    modules.shell.git.enable = true;

    age = {
      identityPaths = [ "${config.home.manager.home.homeDirectory}/.config/sops/age/keys.txt" ];
      secrets = {
        kubeconfig = {
          file = ./kubeconfig.age;
          path = "${config.home.manager.home.homeDirectory}/.kube/config";
          mode = "700";
          owner = "${config.modules.device.username}";
          group = "users";
        };
        talosconfig = {
          file = ./talosconfig.age;
          path = "${config.home.manager.home.homeDirectory}/.talos/config";
          mode = "700";
          owner = "${config.modules.device.username}";
          group = "users";
        };
      };
    };

    home.manager = {
      xdg.configFile."k9s".source = ./k9s;

      programs.fish = {
        shellAbbrs = {
          # kubectl
          k = "kubectl";
          kgp = "kubectl get pods";
          kl = "kubectl logs";
          kdp = "kubectl describe pod";
          kdn = "kubectl describe node";
          kgn = "kubectl get nodes";
          wkgp = "hwatch -- kubectl get pod";
          kx = "kubectl exec -it";

          # flux
          f = "flux";
          fga = "flux get all";
          fsa = "flux suspend kustomization --all";
          fra = "flux resume kustomization --all";
          wfga = "hwatch -- flux get all";

          # k9s
          ks = "k9s";
        };
      };

      programs.direnv.enable = true;

      home.packages = with packages; [
        age
        fluxcd
        go-task
        jq
        k9s
        kubectl
        kubernetes-helm
        nodePackages.zx
        sops
        talosctl
        talhelper
      ];
    };
  };
}
