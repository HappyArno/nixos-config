# Development tools
{ config, pkgs, pkgs-unstable, ... }:
{
  home-manager.users.arno.home.packages = with pkgs; [
    # Code editor
    pkgs-unstable.vscodium
    # C/C++
    (lib.hiPrio gcc_latest)
    gdb
    llvmPackages_latest.clang
    llvmPackages_latest.clang-tools
    cmake
    # Python
    python3
    uv
  ];
}