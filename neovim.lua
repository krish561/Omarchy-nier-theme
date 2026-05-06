return {
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		config = function()
			require("kanagawa").setup({
				theme = "lotus",
				transparent = false,
				background = {
					light = "lotus",
				},
			})
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "kanagawa-lotus",
		},
	},
}
