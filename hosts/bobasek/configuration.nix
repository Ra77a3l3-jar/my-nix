{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../nixos/core
    ../../nixos/desktop
    ../../nixos/apps
  ];

  networking.hostName = "bobasek";

  services.thermald.enable = true;

  system.stateVersion = "26.05";
}
