return{
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({

      })
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls","html","jsonls","ts_ls","zls"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.html.setup({})
      lspconfig.jsonls.setup({})
      -- javascript
      lspconfig.ts_ls.setup({})
      lspconfig.zls.setup({})

      -- hover your curser and see some documentation  
      vim.keymap.set('n','<leader>k',vim.lsp.buf.hover,{})
      -- go to the defination of something 
      vim.keymap.set('n','gd',vim.lsp.buf.definition,{})
      -- perform a code action, meaning if you see an error or warning your can do <leader>ca to see what you can do about it. for eg vim is not global was a problem and when i did <leader>ca i got an option to make it vim a gglobal variable .  
      vim.keymap.set({'n','v'},'<leader>ca',vim.lsp.buf.code_action,{})
    end
  }
}
