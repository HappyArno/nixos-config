# AI tools
{ config, pkgs, pkgs-unstable, ... }:
{
  home-manager.users.arno.home.packages = with pkgs; [
    (pkgs-unstable.llama-cpp.override { cudaSupport = true; })
  ];
}