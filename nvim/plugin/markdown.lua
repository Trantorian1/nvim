if vim.g.did_load_markdown then
	return
end
vim.g.did_load_markdown = true

require("render-markdown").setup({
	html = {
		comment = {
			conceal = false,
		},
	},
})
