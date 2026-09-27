# iOS device tools
{ config, pkgs, pkgs-unstable, ... }:
{
  services.usbmuxd.enable = true;
  home-manager.users.arno.home.packages = with pkgs; [
    libimobiledevice
    ifuse
  ];
}