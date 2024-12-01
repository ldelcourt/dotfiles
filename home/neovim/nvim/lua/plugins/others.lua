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
    "arminveres/md-pdf.nvim",
    branch = "main", -- you can assume that main is somewhat stable until releases will be made
    lazy = true,
    keys = {
      {
        "<leader>,",
        function()
          require("md-pdf").convert_md_to_pdf()
        end,
        desc = "Markdown preview",
      },
    },
    opts = {},
  },
}
