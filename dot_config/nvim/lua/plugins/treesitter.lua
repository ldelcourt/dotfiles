return {
  {
    "nvim-treesitter/nvim-treesitter",
    ---@type TSConfig
    opts = {
      ensure_installed = {
        "dart",
        "lua",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "html",
        "css",
        "scss",
        "yaml",
        "bash",
      },
      auto_install = true,
      indent = {
        enable = true,
        disable = { "dart" },
      },
    },
  },
}
