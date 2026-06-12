if vim.g.did_load_snacks_indent then
	return
end
vim.g.did_load_snacks_indent = true

require("snacks").setup({
	indent = {
		enabled = true,
		animate = {
			enabled = false,
		},
	},
})
