local servers = {
	"lua_ls",
	"html",
	"emmet_language_server",
	"cssls",
	"jsonls",
	"ts_ls",
	"tailwindcss",
	"zls",
	"pyright",
	"intelephense",
}
return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = servers,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- This is called in complition.lua
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			for _, server in ipairs(servers) do
				lspconfig[server].setup({ capabilities = capabilities })
			end
			-- lspconfig.lua_ls.setup({ capabilities = capabilities })
			-- -- html
			-- lspconfig.html.setup({ capabilities = capabilities })
			-- lspconfig.emmet_language_server.setup({ capabilities = capabilities })
			--
			--    -- css
			-- lspconfig.cssls.setup({ capabilities = capabilities })
			-- lspconfig.tailwindcss.setup({ capabilities = capabilities })
			--
			-- -- Json
			-- lspconfig.jsonls.setup({ capabilities = capabilities })
			-- -- javascript
			-- lspconfig.ts_ls.setup({ capabilities = capabilities })
			--    -- zig
			-- lspconfig.zls.setup({ capabilities = capabilities })
			--    -- python
			-- lspconfig.pyright.setup({ capabilities = capabilities })
			--
			--    --php
			-- lspconfig.intelephense.setup({ capabilities = capabilities })

			-- Keymaps for LSP feature
			-- hover your curser and see some documentation
			vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
			-- go to the defination of something
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			-- perform a code action, meaning if you see an error or warning your can do <leader>ca to see what you can do about it. for eg vim is not global was a problem and when i did <leader>ca i got an option to make it vim a gglobal variable .
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
