{
  config,
  pkgs,
  pkgs-unstable,
  nixvim,
  zen-browser,
  inputs,
  system,
  ...
}:

{
  imports = [
    ../../home/core/default.nix
    ../../home/desktop/default.nix
    ../../home/apps/default.nix
    ../../home/terminal/default.nix
    ../../home/shell/default.nix
    ../../home/editor/default.nix
    ../../home/tools/default.nix
    ../../home/dev/default.nix
  ];

  home.username = "raffaele";
  home.homeDirectory = "/home/raffaele";
  home.stateVersion = "26.05";

  programs.home-manager.enable = true;

  nix.package = pkgs.nix;

  # NVIDIA GPU integration for nix apps via /run/opengl-driver.
  # The version must match the Fedora driver (see scripts/update-nvidia-driver.sh).
  targets.genericLinux.gpu = {
    enable = true;
    nvidia = {
      enable = true;
      version = "610.57.04";
      sha256 = "sha256-suk1xmuDuwDAyFe8jg7g/VLekoa0DJzB7sKafOfrEW0=";
    };
  };

  # nix Vulkan apps (zed, ...) don't scan /run/opengl-driver for ICDs;
  # point them at the driver's Vulkan ICD.
  home.sessionVariables.VK_ICD_FILENAMES = "/run/opengl-driver/share/vulkan/icd.d/nvidia_icd.json";

  # Machine-specific aliases for home-manager
  home.shellAliases = {
    hms = "home-manager switch --flake ~/.config/nix-config#raffaele@legion";
    hmb = "home-manager build --flake ~/.config/nix-config#raffaele@legion";
  };

  home.packages =
    (with pkgs; [
      curl
      wget
      man
      man-pages
      nh
      btop
    ])
    ++ [
      zen-browser.packages.${system}.default
    ];

}
