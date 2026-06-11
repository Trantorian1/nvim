{
  sources ? import ./npins,
  system ? builtins.currentSystem,
  pkgs ?
    import sources.nixpkgs {
      inherit system;
      config = {};
      overlays = [];
    },
}: let
  modules = pkgs.lib.evalModules {
    modules = [
      ({config, ...}: {config._module.args = {inherit pkgs;};})
      ./nvim.nix
    ];
  };
in {
  inherit pkgs;
  inherit (modules) config;
}
