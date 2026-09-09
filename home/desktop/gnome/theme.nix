{ pkgs, ... }:

{
  gtk.enable = true;

  gtk.theme = {
    name = "Yaru-dark";
    package = pkgs.yaru-theme;
  };

  gtk.iconTheme = {
    name = "Yaru-dark";
    package = pkgs.yaru-theme;
  };

  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    name = "Yaru";
    package = pkgs.yaru-theme;
    size = 24;
  };

  dconf.settings."org/gnome/desktop/interface" = {
    icon-theme = "Yaru-dark";
    cursor-theme = "Yaru";
    cursor-size = 24;
  };
}
