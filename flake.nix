{
  description = "My personal neovim configuration with NVF";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs =
    {
      nixpkgs,
      nvf,
      ...
    }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
      forAllSystems = nixpkgs.lib.genAttrs systems;
    in
    {
      packages = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};

          neovim = nvf.lib.neovimConfiguration {
            inherit pkgs;
            modules = [ ./modules ];
          };
        in
        {
          default = neovim.neovim;
        }
      );
    };
}
