if vim.g.did_load_colorful_winsep then
	return
end
vim.g.did_load_colorful_winsep = true

require("colorful-winsep").setup({
	animate = {
		enabled = false,
	},
})
