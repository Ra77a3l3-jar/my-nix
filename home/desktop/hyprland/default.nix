{ ... }:

{
  xdg.configFile."hypr" = {
    source = ./config;
    recursive = true;
  };

  xdg.configFile."hypr/scripts/toggle-layout.sh" = {
    source = ./scripts/toggle-layout.sh;
    executable = true;
  };
}
