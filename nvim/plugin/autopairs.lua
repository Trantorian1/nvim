if vim.g.did_load_autopairs then
	return
end
vim.g.did_load_autopairs = true

require("nvim-autopairs").setup({})
