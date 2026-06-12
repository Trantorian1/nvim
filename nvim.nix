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

        packages.myPlugins = with pkgs.vimPlugins; {
          start = [
            plenary-nvim
            nvim-web-devicons
            nui-nvim
            snacks-nvim

            (nvim-treesitter.withPlugins (
              plugins:
                with plugins; [
                  nix
                  lua
                ]
            ))

            oil-nvim
            smart-splits-nvim

            telescope-nvim
            telescope-ui-select-nvim
            telescope-fzf-native-nvim

            catppuccin-nvim
            auto-dark-mode-nvim
            bufferline-nvim
            colorful-winsep-nvim
            git-blame-nvim
            helpview-nvim
            lualine-nvim
            render-markdown-nvim
            no-neck-pain-nvim
            noice-nvim
            precognition-nvim
            rainbow-delimiters-nvim
            nvim-scrollbar
            edgy-nvim
          ];
        };
      };
    };
  };
}
