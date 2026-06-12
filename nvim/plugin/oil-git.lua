if vim.g.did_load_oil_git then
	return
end
vim.g.did_load_oil_git = true

require("oil-git").setup({})
