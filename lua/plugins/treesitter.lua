return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        --        ensure_installed = {"lua","html","javascript","zig","css"},
        auto_install = true,
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true }
      })
    end
  }
}
