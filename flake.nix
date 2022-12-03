{
  description = "My NixOS configurations IaC";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    agenix.url = "github:ryantm/agenix";
    agenix.inputs.nixpkgs.follows = "nixpkgs";
    flake-parts.url = "github:hercules-ci/flake-parts";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    homeage.url = "github:jordanisaacs/homeage";
    homeage.inputs.nixpkgs.follows = "nixpkgs";
    nur.url = "github:nix-community/NUR";
  };

  outputs = { self, ... }@inputs:
    let
      myLib = import ./nixos/lib/default.nix { inherit self inputs; };
    in
    inputs.flake-parts.lib.mkFlake { inherit self; } {
      systems = [ "x86_64-linux" ];
      perSystem = {
        inputs',
        pkgs,
        ...
      }: {
        legacyPackages = import ./nixos/packages { inherit pkgs; };
      };

      flake.nixosConfigurations = {
        budimanjojo-vm = myLib.mkNixosSystem "x86_64-linux" "budimanjojo-vm" "budiman";
        budimanjojo-main = myLib.mkNixosSystem "x86_64-linux" "budimanjojo-main" "budiman";
      };
    };
}
