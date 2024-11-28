{ pkgs, ...}: {
  # Install packages from nix's official package repository.
  #
  # The packages installed here are available to all users, and are reproducible across machines, and are rollbackable.
  # But on macOS, it's less stable than homebrew.
  #
  # Related Discussion: https://discourse.nixos.org/t/darwin-again/29331
  environment.systemPackages = with pkgs; [
    git
    neovim
    lazygit

    wezterm

    ripgrep
    fzf

    sbt
    scala
    yazi
    zellij
    zoxide
  ];
  environment.variables.EDITOR = "nvim";
   

  # TODO To make this work, homebrew need to be installed manually, see https://brew.sh
  #
  # The apps installed by homebrew are not managed by nix, and not reproducible!
  # But on macOS, homebrew has a much larger selection of apps than nixpkgs, especially for GUI apps!
  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true;
      upgrade = true;
      # 'zap': uninstalls all formulae(and related files) not listed here.
     cleanup = "zap";
    };

    # Applications to install from Mac App Store using mas.
    # You need to install all these Apps manually first so that your apple account have records for them.
    # otherwise Apple Store will refuse to install them.
    # For details, see https://github.com/mas-cli/mas 
    # masApps = {
      # Xcode = 497799835;
    # };

    taps = [
      "homebrew/services"
    ];

    # `brew install`
    brews = [
      # "aria2"  # download tool
      "curl" # no not install curl via nixpkgs, it's not working well on macOS!
    ];

    # `brew install --cask`
    # TODO Feel free to add your favorite apps here.
    casks = [
      # "google-chrome"
      "raycast"
      "arc"
      "stats" # system monitor
      "insomnia" # rest client
    ];
  };
}
