{ pkgs, ... }:
{
  home.packages = with pkgs; [
    zellij
  ];
  # Zsh configuration
  programs.zellij = {
    enable = true;
    enableZshIntegration = false;
  };
  xdg.configFile."zellij/config.kdl".source = ./config.kdl;
}
