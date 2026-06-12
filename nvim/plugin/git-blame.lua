if vim.g.did_load_git_blame then
	return
end
vim.g.did_load_git_blame = true

require("gitblame").setup({
	enabled = true,
	delay = 0,
})
