{
  description = "Main flake for server";

  inputs = {
    # Package Sources.
      nixpkgs.url = "nixpkgs/nixos-24.11"; # Change this line to update the package sources.
  };

  outputs = {nixpkgs, ...}:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux"; # Change this if you are using a different system architecture.
      pkgs = nixpkgs.legacyPackages.${system}; # Packages for the system.
    in
    {
      # System Configuration.
      nixosConfigurations = {
        nixos = lib.nixosSystem {
          inherit system;

          # NixOS Modules
          modules = [
            ./configuration.nix
          ];
        }; 
      };

    };
}
