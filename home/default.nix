{ pkgs, ... }:
{
  home.username = "luameister";
  home.homeDirectory = "/home/luameister";
  home.stateVersion = "26.05";

  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    settings.user = {
      name = "Ryan H.";
      email = "you@example.com";   # put your real email here
    };
  };

  programs.firefox.enable = true;

  home.packages = with pkgs; [
    kdePackages.kate
    htop
    fastfetch
    spotify
    obsidian
  ];
}
