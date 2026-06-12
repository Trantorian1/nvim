if vim.g.did_load_indent_blankline then
	return
end
vim.g.did_load_indent_blankline = true

require("ibl").setup()
