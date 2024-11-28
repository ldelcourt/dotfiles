{pkgs, lib, ...}: {
  home.packages = with pkgs; [
    eza
  ];

  programs = {
    # modern vim
    neovim = {
      enable = true;
      defaultEditor = true;
      vimAlias = true;
    };

    git = {
      enable = true;
      userName="ldelcourt";
      userEmail="lou.delcourt@gmail.com";
      aliases = {
        graph = ''log --graph --pretty="format:%C(auto)%h %d %s %Cblue[%ad %an]" --decorate --all --date="format:%d-%m-%Y %H:%M"'';
      };
    };

    # A modern replacement for ‘ls’
    # useful in bash/zsh prompt, not in nushell.
    eza = {
      enable = true;
      git = true;
      icons = "auto";
      enableZshIntegration = true;
    };

    # terminal file
    yazi = {
      enable = true;
      enableZshIntegration = true;
      settings = {
        manager = {
          show_hidden = false;
          sort_by = "modified";
          sort_reverse = true;
          sort_dir_first = true;
          line_mode = "mtime";
        };
      };
    };

  };
}
