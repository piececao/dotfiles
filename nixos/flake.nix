{
  description = "Dell G15 5520 NixOS Configuration";

  inputs = {
    #nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs.url = "git+https://mirrors.cernet.edu.cn/nixpkgs.git?ref=nixos-26.05&shallow=1";
    #nixpkgs.url = "https://mirror.nju.edu.cn/git/nixpkgs.git";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations = {
      # Replace "ZOOT" with your actual hostname if it's different
      ZOOT = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          ./configuration.nix
        ];
      };
    };
  };
}
