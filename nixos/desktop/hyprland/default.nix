{ pkgs, ... }:

{
  programs.hyprland.enable = true;
  programs.hyprland.withUWSM = false;

  services.greetd = {
    enable = true;
    settings.default_session = {
      command = "${pkgs.tuigreet}/bin/tuigreet --time --cmd ${pkgs.hyprland}/bin/start-hyprland";
      user = "greeter";
    };
  };

  environment.systemPackages = with pkgs; [
    hyprlauncher
  ];

}
