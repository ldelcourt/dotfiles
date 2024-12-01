{ pkgs, ... }:
{
  home.packages = with pkgs; [
    oh-my-zsh
  ];
  # Zsh configuration
  programs.zsh = {
    enable = true;
    shellAliases = {
      update = "darwin-rebuild switch --flake ~/.config/nix#macbook";
    };
    autocd = false;

    zplug = {
      enable = true;
      plugins = [
        { name = "zsh-users/zsh-autosuggestions"; } # Simple plugin installation
        { name = "zsh-users/zsh-syntax-highlighting"; } # Simple plugin installation
      ];
    };


    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
        "colored-man-pages"
        "fzf"
        "zoxide"
      ];
    };
  };
}
