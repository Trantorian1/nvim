if vim.g.did_load_treesitter_context then
	return
end
vim.g.did_load_treesitter_context = true

require("treesitter-context").setup({
	enable = true,
	multiwindow = true,
	max_lines = 5,
})

vim.keymap.set("n", "<leader>tc", "<CMD>TSContextToggle<CR>", { desc = "[T]oggle [C]ontext" })
