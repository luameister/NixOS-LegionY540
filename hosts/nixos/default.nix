{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nix.nix
    ../../modules/laptop.nix
    ../../modules/desktop.nix
    ../../modules/locale.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  users.users.luameister = {
    isNormalUser = true;
    description = "Ryan H.";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  # Only the basics live system-wide; everything else is in home/default.nix
  environment.systemPackages = with pkgs; [ git neovim wget curl ];

  system.stateVersion = "26.05"; # never change this
}
