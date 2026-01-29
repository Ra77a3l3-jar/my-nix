{ pkgs-unstable, ... }:

{

  home.packages = with pkgs-unstable; [
    dust
    fd
    ripgrep
    jq
    btop
    tldr
  ];
  
}
