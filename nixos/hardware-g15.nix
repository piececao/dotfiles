{ config, lib, pkgs, modulesPath, ... }:

{
  services.xserver.videoDrivers = [ 
    "modesetting"
    "nvidia" 
  ];

  # Intel Graphics Setup
  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      intel-media-driver
      vpl-gpu-rt
      intel-compute-runtime
    ];
  };
  boot.kernelParams = [ "i915.force_probe=46a6" ];

  # Nvidia Graphics Setup
  hardware.nvidia.open = true;
  hardware.nvidia.modesetting.enable = true;
  hardware.nvidia.prime = {
    offload.enable = true;
    offload.enableOffloadCmd = true;
    intelBusId = "PCI:0@0:2:0";
    nvidiaBusId = "PCI:1@0:0:0";
  };
}
