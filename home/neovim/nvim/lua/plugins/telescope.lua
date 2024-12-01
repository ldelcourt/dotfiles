return {
  "nvim-telescope/telescope.nvim",
  -- replace all Telescope keymaps with only one mapping
  keys = {
    { "<leader><leader>", "<cmd>Telescope git_files recurse_submodules=true<cr>", desc = "Find Files" },
  },
}
