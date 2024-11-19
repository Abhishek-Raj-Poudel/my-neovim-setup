return {

  -- { "catppuccin/nvim", name = "catppuccin",
  -- priority = 1000,
  --     config = function()
  --       -- load the colorscheme here
  --       vim.cmd([[colorscheme catppuccin]])
  --     end,
  -- },
  --   {
  --     "Shatur/neovim-ayu",
  --     name="ayu",
  -- priority = 1000,
  --     config = function()
  --       -- load the colorscheme here
  --       vim.cmd([[colorscheme ayu]])
  --     end,
  --   },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme gruvbox]])
      vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" }) -- for floating windows, if needed
    end,
  }
}
