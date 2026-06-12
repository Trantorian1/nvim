{
  super ? import ./. {},
  pkgs ? super.pkgs,
  rust ? super.rust,
  ...
}: {
  shell = pkgs.mkShellNoCC {
    packages = with pkgs; [
      super.config.nvim
      neovide
      nerd-fonts.jetbrains-mono
      ripgrep

      lua-language-server
      stylua

      nil
      alejandra

      rust
      taplo
      fixjson

      npins
    ];
  };
}
