{
  services.fwupd.enable = true;
  services.fstrim.enable = true;
  zramSwap.enable = true;
  services.power-profiles-daemon.enable = true;

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    settings.General.Experimental = true;
  };
}
