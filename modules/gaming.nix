{ pkgs, ... }:
{
  programs.steam = {
    enable = true;
    # remotePlay.openFirewall = true;        # if you use Steam Remote Play
    # localNetworkGameTransfers.openFirewall = true;
    extraCompatPackages = [ pkgs.proton-ge-bin ];   # optional: Proton-GE as an extra compat tool
  };

  programs.gamemode.enable = true;           # optional: CPU/governor tweaks while gaming

  hardware.graphics.enable32Bit = true;      # 32-bit GL/Vulkan for games (Steam enables this too, explicit is fine)
}
