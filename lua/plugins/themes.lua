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
    end,
  }
}
