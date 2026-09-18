# Gaming
{ config, pkgs, pkgs-unstable, ... }:
{
  # Enable hardware accelerated graphics drivers
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
  programs.gamemode.enable = true;
  # Enable ntsync
  boot.kernelModules = [ "ntsync" ];
  # Gaming stack
  home-manager.users.arno.home.packages = with pkgs; [
    pkgs-unstable.heroic
    pkgs-unstable.umu-launcher
    pkgs-unstable.protonplus
    pkgs-unstable.mangohud
  ];
}