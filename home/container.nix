{pkgs, lib, ...}: {
  home.packages = with pkgs; [
    docker-compose
    lazydocker
  ];
}
