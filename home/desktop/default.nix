{ lib, isNixOS, ... }:

{
  imports =
    lib.optionals (!isNixOS) [
      ./gnome/default.nix
    ]
    ++ lib.optionals isNixOS [
      ./hyprland/default.nix
    ];
}
