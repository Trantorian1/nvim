if vim.g.did_load_flash then
	return
end
vim.g.did_load_flash = true

require("flash").setup({
	modes = {
		search = {
			enabled = true,
			highlight = { backdrop = true },
		},
	},
	jump = {
		autojump = false,
	},
})
