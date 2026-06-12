if vim.g.did_load_comment then
	return
end
vim.g.did_load_comment = true

require("Comment").setup({
	toggler = {
		-- Line-comment toggle keymap
		line = "cc",
		-- Block-comment toggle keymap
		block = "bb",
	},
})
