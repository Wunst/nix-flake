return {
  "nvim-telescope/telescope-file-browser.nvim",

  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim"
  },

  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>" },
    { "<leader>fm", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>" },
  },

  lazy = false,

  config = function ()
    require("telescope").setup {
      extensions = {
        file_browser = {
          hijack_netrw = true,
          grouped = true,
          hide_parent_dir = true,
        }
      }
    }

    require("telescope").load_extension("file_browser")
  end,
}

