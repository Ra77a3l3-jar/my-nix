{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../nixos/core
    ../../nixos/desktop
  ];

  networking.hostName = "bobasek";

  services.thermald.enable = true;

  system.stateVersion = "26.05";
}
