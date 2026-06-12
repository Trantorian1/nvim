if vim.g.did_load_rainbow_delimiters then
	return
end
vim.g.did_load_rainbow_delimiters = true

require("rainbow-delimiters.setup").setup({})
