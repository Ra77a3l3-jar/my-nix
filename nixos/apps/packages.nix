{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    brightnessctl
    nautilus
    playerctl
  ];
}
