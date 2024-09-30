return {
  "bitpoke/wordpress.nvim",
  config = function()
    local wp = require("wordpress")
    local lspconfig = require("lspconfig")
    local null_ls = require("null-ls")

    -- setup intelephense for PHP, WordPress and WooCommerce development
    lspconfig.intelephense.setup(wp.intelephense)

    null_ls.setup({
      sources = {
        null_ls.builtins.diagnostics.phpcs.with(wp.null_ls_phpcs),
        null_ls.builtins.formatting.phpcbf.with(wp.null_ls_phpcs),
      },
    })
  end,
}
