# Expose unstable nixpkgs as `pkgs-unstable`

{ config, pkgs, inputs, ... }:

{
  _module.args.pkgs-unstable = import inputs.nixpkgs-unstable {
    inherit (pkgs.stdenv.hostPlatform) system;
    config = config.nixpkgs.config;
  };
}