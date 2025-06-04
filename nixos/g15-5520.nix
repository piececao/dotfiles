{ config, lib, pkgs, ... }:
{
  imports =
    [ # Include the results of the hardware scan.
      ./common/cpu/intel/alder-lake
      ./common/gpu/nvidia/ampere
      ./common/pc/laptop
      ./common/pc/ssd
    ];
  services.thermald.enable = lib.mkDefault true;
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia.powerManagement.enable = true;
}
