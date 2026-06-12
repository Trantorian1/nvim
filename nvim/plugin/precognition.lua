if vim.g.did_load_precognition then
	return
end
vim.g.did_load_precognition = true

require("precognition").setup({})
