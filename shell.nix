{
  super ? import ./. {},
  pkgs ? super.pkgs,
  ...
}: {
  shell = pkgs.mkShellNoCC {
    packages = with pkgs; [
      npins
      neovide
      nerd-fonts.jetbrains-mono
      super.config.nvim
    ];
  };
}
