if vim.g.did_load_auto_dark_mode then
	return
end
vim.g.did_load_auto_dark_mode = true

require("auto-dark-mode").setup({
	set_dark_mode = function()
		vim.cmd.colorscheme("catppuccin-macchiato")
	end,
	set_light_mode = function()
		vim.cmd.colorscheme("catppuccin-latte")
	end,
	update_interval = 1000,
	fallback = "dark",
})
