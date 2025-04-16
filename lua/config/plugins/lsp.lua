return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"folke/lazydev.nvim",
				ft = "lua", -- only load on lua files
				opts = {
					library = {
						-- See the configuration section for more details
						-- Load luvit types when the `vim.uv` word is found
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},
		config = function()
			local capapilities = require('blink.cmp').get_lsp_capabilities()
			vim.diagnostic.config({
				virtual_text = true,
				signs = true,
				underline = true,
				update_in_insert = false,
			})
			require("lspconfig").clangd.setup {capabilities = capapilities}
			require("lspconfig").lua_ls.setup {capabilities = capapilities}
			vim.keymap.set("n", "<space>f", function() vim.lsp.buf.format() end)
			-- NOTE: read :help ins-completion
			-- :help lsp
		end,
	}
}
