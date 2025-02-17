{
  description = "My NixOS Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  
    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
  };

  outputs = { self, nixpkgs, home-manager, hyprland, ... }:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
        config.allowUnfree = true;	
    };
    lib = nixpkgs.lib;

  in {  
    nixosConfigurations = {
      LionsArch = lib.nixosSystem rec {
        inherit system;
        specialArgs = { inherit hyprland; };
        modules = [
          ./nixos/configuration.nix
          hyprland.nixosModules.default
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = specialArgs;
            home-manager.users.bp515 = import ./home/home.nix;
          }
         ];
        };
    };
  };
}
