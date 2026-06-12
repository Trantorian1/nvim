if vim.g.did_load_helpview then
	return
end
vim.g.did_load_helpview = true

require("helpview").setup()
