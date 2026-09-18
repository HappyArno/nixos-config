# Set the input method
{ config, pkgs, pkgs-unstable, ... }:
{
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5 = {
      waylandFrontend = true;
      addons = with pkgs; [
        kdePackages.fcitx5-chinese-addons
        kdePackages.fcitx5-qt
        kdePackages.fcitx5-configtool
        fcitx5-gtk
        fcitx5-pinyin-zhwiki
        fcitx5-pinyin-moegirl
      ];
    };
  };
}