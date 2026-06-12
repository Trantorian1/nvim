if vim.g.did_load_neogen then
	return
end
vim.g.did_load_neogen = true

require("neogen").setup({})

vim.keymap.set("n", "<leader>dc", function()
	require("neogen").generate()
end, { desc = "[D]ocument [C]ode" })
