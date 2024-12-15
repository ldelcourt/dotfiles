{pkgs,  ...}: {
  home.packages = with pkgs; [
    lazygit

    obsidian
    wezterm
    zellij

    eza
    fzf
    ripgrep
    yazi
    zoxide

    # TODO: Change textliveFull to smaller package and add the required plugins
    # see https://github.com/Wandmalfarbe/pandoc-latex-template/
    # also move this to a separate file
    pandoc
    texliveFull
    
    rustup
    coursier
    metals
    sbt
    scala
    python3
  ];

  programs = {
    java = {
      enable = true;
    };
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

    # zoxide is a smarter cd command, inspired by z and autojump.
    # It remembers which directories you use most frequently,
    # so you can "jump" to them in just a few keystrokes.
    # zoxide works on all major shells.
    #
    #   z foo              # cd into highest ranked directory matching foo
    #   z foo bar          # cd into highest ranked directory matching foo and bar
    #   z foo /            # cd into a subdirectory starting with foo
    #
    #   z ~/foo            # z also works like a regular cd command
    #   z foo/             # cd into relative path
    #   z ..               # cd one level up
    #   z -                # cd into previous directory
    #
    #   zi foo             # cd with interactive selection (using fzf)
    #
    #   z foo<SPACE><TAB>  # show interactive completions (zoxide v0.8.0+, bash 4.4+/fish/zsh only)
    zoxide = {
      enable = true;
      enableZshIntegration = true;
    };

    # A command-line fuzzy finder
    fzf = {
      enable = true;
      # https://github.com/catppuccin/fzf
      # catppuccin-mocha
      colors = {
        "bg+" = "#313244";
        "bg" = "#1e1e2e";
        "spinner" = "#f5e0dc";
        "hl" = "#f38ba8";
        "fg" = "#cdd6f4";
        "header" = "#f38ba8";
        "info" = "#cba6f7";
        "pointer" = "#f5e0dc";
        "marker" = "#f5e0dc";
        "fg+" = "#cdd6f4";
        "prompt" = "#cba6f7";
        "hl+" = "#f38ba8";
      };
    };

  };
}
