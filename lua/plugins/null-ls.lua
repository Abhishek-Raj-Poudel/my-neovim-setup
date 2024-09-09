return {
   {
     "jay-babu/mason-null-ls.nvim",
       event = { "BufReadPre", "BufNewFile" },
       dependencies = {
         "williamboman/mason.nvim",
         "nvimtools/none-ls.nvim",
       },
       config = function()
         require("mason-null-ls").setup({
             ensure_installed = { "stylua", "prettier","eslint_d" }
             })

        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
            null_ls.builtins.formatting.stylua,
            null_ls.builtins.formatting.prettier,
            null_ls.builtins.diagnostics.eslint_d, 
            }})
      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
     end,
   },
    -- {
    --   "nvimtools/none-ls.nvim",
    --
    --   config = function()
    --   --   local null_ls = require("null-ls")
    --   --   null_ls.setup({
    --   --       sources = {
    --   --       null_ls.builtins.formatting.stylua,
    --   --       null_ls.builtins.formatting.prettier,
    --   --       --null_ls.builtins.diagnostics.eslint_d, 
    --   --       }})
    --   -- vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    --     end,
    -- }
}
        
  

