return {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = function()
				vim.cmd("highlight clear")
				vim.o.termguicolors = true

				local c = {
					bg = "#d1cdb7",
					bg_alt = "#dcd8c0",

					fg = "#5c5346",
					fg_soft = "#746854",
					fg_faint = "#938b73",

					border = "#bab5a1",
					select = "#c8bea0",

					red = "#9b5c5c",
					yellow = "#8a7458",
					green = "#7a8060",
				}

				local hl = vim.api.nvim_set_hl

				-- Base UI
				hl(0, "Normal", { fg = c.fg, bg = c.bg })
				hl(0, "NormalFloat", { fg = c.fg, bg = c.bg_alt })

				hl(0, "FloatBorder", {
					fg = c.border,
					bg = c.bg_alt,
				})

				hl(0, "SnacksDashboardHeader", {
					fg = "#6b604d",
				})

				hl(0, "WinSeparator", {
					fg = c.border,
				})

				hl(0, "StatusLine", {
					fg = c.fg,
					bg = c.bg,
				})

				hl(0, "StatusLineNC", {
					fg = c.fg_faint,
					bg = c.bg,
				})

				hl(0, "LineNr", {
					fg = c.border,
				})

				hl(0, "CursorLineNr", {
					fg = c.fg,
				})

				hl(0, "Visual", {
					bg = c.select,
				})

				hl(0, "Search", {
					fg = c.fg,
					bg = c.border,
				})

				-- Syntax
				hl(0, "Comment", {
					fg = c.fg_faint,
					italic = true,
				})

				hl(0, "Keyword", {
					fg = c.fg_soft,
				})

				hl(0, "Statement", {
					fg = c.fg_soft,
				})

				hl(0, "Function", {
					fg = c.fg,
				})

				hl(0, "Identifier", {
					fg = c.fg,
				})

				hl(0, "String", {
					fg = c.green,
				})

				hl(0, "Type", {
					fg = c.yellow,
				})

				hl(0, "Constant", {
					fg = c.yellow,
				})

				hl(0, "Number", {
					fg = c.yellow,
				})

				-- Diagnostics
				hl(0, "DiagnosticError", {
					fg = c.red,
				})

				hl(0, "DiagnosticWarn", {
					fg = c.yellow,
				})

				hl(0, "DiagnosticInfo", {
					fg = c.fg_soft,
				})

				-- Treesitter
				hl(0, "@keyword", { link = "Keyword" })
				hl(0, "@string", { link = "String" })
				hl(0, "@function", { link = "Function" })
				hl(0, "@type", { link = "Type" })
				hl(0, "@comment", { link = "Comment" })
				hl(0, "@variable", { fg = c.fg })

				vim.g.colors_name = "yorha"
			end,
		},
	},
}
