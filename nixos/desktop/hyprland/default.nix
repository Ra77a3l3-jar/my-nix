{ pkgs, ... }:
{
  programs.hyprland.enable = true;
  programs.hyprland.withUWSM = false;

  services.greetd = {
    enable = true;
    settings.default_session = {
      command = "${pkgs.tuigreet}/bin/tuigreet --time --cmd Hyprland";
      user = "greeter";
    };
  };
}
