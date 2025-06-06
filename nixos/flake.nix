{
  inputs = {
    # This is pointing to an unstable release.
    # If you prefer a stable release instead, you can this to the latest number shown here: https://nixos.org/download
    # i.e. nixos-24.11
    # Use `nix flake update` to update the flake to the latest revision of the chosen release channel.
    # nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs.url = "https://mirrors.ustc.edu.cn/nix-channels/nixos-25.05/nixexprs.tar.xz";
  };
  outputs = inputs@{ self, nixpkgs, ... }: {
    # NOTE: 'nixos' is the default hostname
    nixosConfigurations.Piececao = nixpkgs.lib.nixosSystem {
      modules = [ ./configuration.nix ];
    };
  };
}

