return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = true,
  },
  {
    "mistricky/codesnap.nvim",
    build = "make",
    opts = {
      has_breadcrumbs = true,
      show_workspace = true,
      watermark = "",
    },
    config = function(_, opts)
      require("codesnap").setup(opts)
    end,
  },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
