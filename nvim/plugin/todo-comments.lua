if vim.g.did_load_todo_comments then
	return
end
vim.g.did_load_todo_comments = true

require("todo-comments").setup({})

vim.keymap.set("n", "<leader>sc", "<CMD>TodoTelescope<CR>", { desc = "[S]earch [C]omments" })
