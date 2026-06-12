{
  super ? import ./. {},
  pkgs ? super.pkgs,
  ...
}: {
  shell = pkgs.mkShellNoCC {
    packages = with pkgs; [
      lua-language-server
      nil
      neovide
      nerd-fonts.jetbrains-mono
      super.config.nvim
      npins
    ];
  };
}
