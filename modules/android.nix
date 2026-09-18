# Android tools
{ config, pkgs, pkgs-unstable, ... }:
{
  home-manager.users.arno.home.packages = with pkgs; [
    android-tools
    scrcpy
  ];
}