# Virtualization tools
{ config, pkgs, pkgs-unstable, ... }:
{
  users.users."arno".extraGroups = [ "libvirtd" ];
  # Enable virt-manager
  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;
}