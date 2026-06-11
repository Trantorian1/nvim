{
  config,
  pkgs,
  lib,
  ...
}: {
  options = {
    nvim = lib.mkOption {
      type = lib.types.package;
    };
  };

  config = {
    nvim = pkgs.neovim.override {
      configure = {
        customLuaRC =
          ''
            vim.opt.rtp:prepend "${./nvim}"
          ''
          + (builtins.readFile ./nvim/init.lua);

        packages.user.start = with pkgs.vimPlugins; [
          oil-nvim
        ];
      };
    };
  };
}
