{ lib, isNixOS, ... }:

{
  nix = {
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

  targets.genericLinux.enable = !isNixOS;
}
// lib.optionalAttrs (!isNixOS) {
  nixpkgs.config = {
    allowUnfree = true;
    nvidia.acceptLicense = true;
  };
}
