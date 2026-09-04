{ inputs, ... }:

{
  imports = [
    inputs.sonora.homeManagerModules.default
  ];

  programs.sonora = {
    enable = true;

    settings = {
      provider = "youtube";
      gapless = true;
      check_updates = false;
      hidden_nav = [ "history" ];

      appearance = {
        theme = "dark";
        adaptive_theme = true;
        icons = "solar";
        rounding = "rounded";
        font_size = 14;
      };
    };
  };
}
