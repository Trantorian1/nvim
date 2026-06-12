if vim.g.did_load_no_neck_pain then
	return
end
vim.g.did_load_no_neck_pain = true

require("no-neck-pain").setup({
	width = 130,
	buffers = {
		left = {
			scratchPad = {
				enabled = true,
				pathToFile = "./notes-left.md",
			},
		},
		right = {
			scratchPad = {
				enabled = true,
				pathToFile = "./notes-right.md",
			},
		},
	},
})

vim.keymap.set("n", "<leader>cc", function()
	require("no-neck-pain").toggle()
end, { desc = "[C]enter buffer" })
