{ pkgs, ... }: let
  colorscheme = "retrobox";
in {
  programs.neovim = {
    enable = true;
    defaultEditor = true;

    extraPackages = with pkgs; [
      xsel # Clipboard tool.

      fd
      ripgrep
    ];

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

      set termguicolors

      filetype plugin indent on
      syntax on

      colorscheme ${colorscheme}
    '';

    plugins = with pkgs.vimPlugins; [
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
      { plugin = telescope-nvim;
        config = ''
          lua << EOF
            require("telescope").setup{
              extensions = {
                file_browser = {
                  hijack_netrw = true,
                },
              },
            }

            require("telescope").load_extension "file_browser"

            vim.keymap.set("n", " ff", require("telescope.builtin").find_files)
            vim.keymap.set("n", " fg", require("telescope.builtin").live_grep)
            vim.keymap.set("n", " fb", require("telescope.builtin").buffers)

            vim.keymap.set("n", " fm", require("telescope").extensions.file_browser.file_browser)
          EOF
        ''; }
      
      { plugin = nvim-lspconfig;
        config = ''
          lua << EOF
            local lspconfig = require("lspconfig")

            lspconfig.nil_ls.setup{}
            lspconfig.clangd.setup{}
            lspconfig.ts_ls.setup{}
            lspconfig.rust_analyzer.setup{}
          EOF
        ''; }

      vim-vsnip # Snippet helper.
      cmp-vsnip
      cmp-buffer
      cmp-nvim-lsp
      cmp-nvim-lsp-signature-help

      # TODO: more completion sources
      # TODO: cmdline completion

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

                ["<CR>"] = cmp.mapping.confirm(),
              },
              sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "nvim_lsp_signature_help" },
                { name = "vsnip" },
              }, {
                { name = "buffer" }
              }),
            }
          EOF
        ''; }
    ];
  };

  home.shellAliases."v" = "nvim";
}
 
