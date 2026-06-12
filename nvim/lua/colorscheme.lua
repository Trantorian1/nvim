require("catppuccin").setup({
	float = {
		transparent = false,
		solid = false,
	},
	term_colors = true,
	integrations = {
		barbar = true,
		blink_cmp = {
			style = "bordered",
		},
		snacks = {
			enabled = false,
		},
		diffview = true,
		fidget = true,
		flash = true,
		gitsigns = true,
		neotest = true,
		noice = true,
		render_markdown = true,
		which_key = true,
		dap = true,
		dap_ui = true,
	},
})
vim.cmd.colorscheme("catppuccin-latte")
