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
            vim.opt.rtp:prepend "${./nvim}/after"
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
                  rust
                  json
                  yaml
                  toml
                  c
                ]
            ))

            telescope-nvim
            telescope-ui-select-nvim
            telescope-fzf-native-nvim

            git-blame-nvim
            diffview-nvim
            gitsigns-nvim
            oil-git-nvim

            fidget-nvim
            nvim-lspconfig
            rustaceanvim

            oil-nvim
            nvim-autopairs
            blink-cmp
            luasnip
            conform-nvim
            todo-comments-nvim
            comment-nvim
            flash-nvim
            vim-visual-multi
            neogen
            nvim-treesitter-context

            catppuccin-nvim
            auto-dark-mode-nvim
            bufferline-nvim
            colorful-winsep-nvim
            helpview-nvim
            lualine-nvim
            render-markdown-nvim
            noice-nvim
            precognition-nvim
            rainbow-delimiters-nvim
            nvim-scrollbar
            edgy-nvim
            which-key-nvim
            smart-splits-nvim
            no-neck-pain-nvim
          ];
        };
      };
    };
  };
}
