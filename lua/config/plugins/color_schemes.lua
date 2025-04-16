return {
	{
		"marko-cerovac/material.nvim",
		config = function()
			vim.g.material_style = "deep ocean"
		end
	},
	{
		'ray-x/aurora',
		init = function()
			vim.g.aurora_italic = 1
			vim.g.aurora_transparent = 1
			vim.g.aurora_bold = 1
		end,
		config = function()
			-- vim.cmd.colorscheme "aurora"
			-- vim.api.nvim_set_hl(0, '@number', { fg = '#e933e3' })
		end
	},
	{
		"bluz71/vim-nightfly-colors",
		name = "nightfly",
		lazy = false,
		priority = 1000
	},

}
