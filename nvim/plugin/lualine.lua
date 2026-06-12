if vim.g.did_load_lualine then
	return
end
vim.g.did_load_lualine = true

require("lualine").setup({
	options = {
		section_separators = { left = "", right = "" },
		component_separators = { left = "", right = "" },
		globalstatus = true,
	},
	sections = {
		lualine_y = { "selectioncount" },
	},
})
