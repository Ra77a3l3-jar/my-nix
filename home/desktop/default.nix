{ lib, isNixOS, ... }:

{
  imports =
    [
      ./gnome/theme.nix
    ]
    ++ lib.optionals (!isNixOS) [
      ./gnome/default.nix
    ]
    ++ lib.optionals isNixOS [
      ./hyprland/default.nix
    ];
}
