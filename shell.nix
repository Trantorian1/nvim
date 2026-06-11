{
  super ? import ./. {},
  pkgs ? super.pkgs,
  ...
}: {
  shell = pkgs.mkShellNoCC {
    packages = with pkgs; [
      npins
    ];
  };
}
