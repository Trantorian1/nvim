if vim.g.did_load_bufferline then
	return
end
vim.g.did_load_bufferline = true

require("bufferline").setup({
	options = {
		mode = "tabs",
		indicator = "underline",
		separator_style = "slant",
	},
})

vim.keymap.set("n", "<leader>tt", function()
	require("bufferline").pick()
end, { desc = "pick [T]ab" })
