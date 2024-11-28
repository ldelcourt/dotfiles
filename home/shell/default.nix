{ pkgs, ... }:
{
  # Zsh configuration
  programs.zsh = {
    enable = true;
    dotDir = ".config/nix/home/shell";
  };
}
