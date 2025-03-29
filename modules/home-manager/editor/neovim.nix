{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;

    # External tooling.
    extraPackages =
      with pkgs; [
        xsel # Clipboard helper.
        fd
        ripgrep
      ];

    # Vim config.
    extraConfig = ''
      set nu
      set rnu
      set sw=2
      set et
      set si
      set clipboard=unnamedplus
      set undofile
      set undodir=$HOME/.vim/undodir
      set nowrap
      filetype plugin indent on
      syntax on
      colorscheme retrobox
    '';

    plugins =
      with pkgs.vimPlugins; [
        { plugin = nvim-treesitter.withAllGrammars;
          config = ''
            lua << EOF
              require("nvim-treesitter.configs").setup{
                highlight = {
                  enable = true,
                },
              }
            EOF
          ''; }

        telescope-file-browser-nvim
        telescope-ui-select-nvim
        { plugin = telescope-nvim;
          config = ''
            lua << EOF
              require("telescope").setup{
                extensions = {
                  file_browser = {
                    hijack_netrw = true,
                    path = "%:p:h",
                    select_buffer = true,
                    grouped = true,
                  },
                  ["ui-select"] = require("telescope.themes").get_cursor{}
                },
              }

              require("telescope").load_extension"file_browser"
              require("telescope").load_extension"ui-select"

              local p = require("telescope.builtin")

              vim.keymap.set("n", " ff", p.find_files)
              vim.keymap.set("n", " fg", p.live_grep)
              vim.keymap.set("n", " fb", p.buffers)

              vim.keymap.set("n", " fm", require("telescope").extensions.file_browser.file_browser)
            EOF
          ''; }

        { plugin = nvim-lspconfig;
          config = ''
            lua << EOF
              local l = require("lspconfig")

              l.nil_ls.setup{}
              l.ts_ls.setup{}
              l.clangd.setup{}
              l.gdscript.setup{}

              vim.keymap.set("n", "gd", vim.lsp.buf.definition)
              vim.keymap.set("n", "gD", vim.lsp.buf.references) -- shows references in quickfix-list
              vim.keymap.set("n", " ca", vim.lsp.buf.code_action)
            EOF
          ''; }

        # Displays a lightbulb icon when code actions are available.
        { plugin = nvim-lightbulb;
          config = ''
            lua << EOF
              require("nvim-lightbulb").setup{
                autocmd = { enable = true },
              }
            EOF
          ''; }

        vim-vsnip
        cmp-vsnip
        cmp-buffer
        cmp-nvim-lsp
        cmp-nvim-lsp-signature-help
        cmp-path
        cmp-cmdline

        { plugin = nvim-cmp;
          config = ''
            lua << EOF
              local cmp = require("cmp")

              cmp.setup{
                snippet = {
                  expand = function(args) vim.fn["vsnip#anonymous"](args.body) end,
                },

                mapping = cmp.mapping.preset.insert{
                  ["<C-Space>"] = cmp.mapping.complete(),

                  ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                  ["<C-f>"] = cmp.mapping.scroll_docs(4),

                  ["<C-p>"] = cmp.mapping.select_prev_item(),
                  ["<C-n>"] = cmp.mapping.select_next_item(),

                  ["<CR>"] = cmp.mapping.confirm({ select = false }),
                },

                sources = cmp.config.sources({
                  { name = "nvim_lsp" },
                  { name = "nvim_lsp_signature_help" },
                  { name = "vsnip" },
                }, {
                  { name = "path" },
                }, {
                  { name = "buffer" },
                }),
              }
              
              cmp.setup.cmdline({ "/", "?" }, {
                sources = {
                  { name = "buffer" },
                },
              })

              cmp.setup.cmdline(":", {
                sources = cmp.config.sources({
                  { name = "cmdline" },
                }, {
                  { name = "path" },
                })
              })
            EOF
          ''; }

        # Error messages as virtual text.
        { plugin = lsp_lines-nvim;
          config = ''
            lua << EOF
              require("lsp_lines").setup()
              vim.diagnostic.config{
                virtual_text = false,
              }
            EOF
          ''; }
      ];
  };

  home.shellAliases."v" = "nvim";
}

