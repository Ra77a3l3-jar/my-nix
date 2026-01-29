{ pkgs-unstable, ... }:

{
  programs.eza = {
    enable = true;
    package = pkgs-unstable.eza;
    enableFishIntegration = true;
  };
}
