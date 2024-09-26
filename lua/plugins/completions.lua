return {
  -- LSP source for cmp
  {"hrsh7th/cmp-nvim-lsp"},

  -- Luasnip and friendly-snippets setup
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
      "sudar/vim-wordpress-snippets"

		},
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load() -- Load all VSCode-like snippets
			-- Extend Tailwind and other snippets to typescript and typescriptreact
			-- require("luasnip").filetype_extend("typescript", { "javascript", "html", "tailwindcss" })
			-- require("luasnip").filetype_extend("typescriptreact", { "javascript", "html", "tailwindcss" })
		end,
	},

  -- CMP configuration
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")

			cmp.setup({
				snippet = {
					-- REQUIRED - you must specify a snippet engine
					expand = function(args)
						luasnip.lsp_expand(args.body) -- For `luasnip` users
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" }, -- LSP source for autocompletion
					{ name = "luasnip" },  -- For luasnip users
				}, {
					{ name = "buffer" },
				}),
			})
		end,
	},
}
