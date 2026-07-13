{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "arno";
  home.homeDirectory = "/home/arno";

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    vscodium
    v2rayn
    nix-tree
    # C++
    (lib.hiPrio gcc_latest)
    llvmPackages_latest.clang
    llvmPackages_latest.clang-tools
    cmake
    # Python
    python3
    uv
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "26.05";
}