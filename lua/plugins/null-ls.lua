return {
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          -- add your formatters here , here stylua is a formatter, you need to install it with mason, maybe ensure install in your lspconfig.lua file
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.prettier,
          --          null_ls.builtins.diagnostics.eslint_d,
        },
      })
      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
  },
}
