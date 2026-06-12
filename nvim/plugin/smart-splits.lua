if vim.g.did_load_smart_splits then
	return
end
vim.g.did_load_smart_splits = true

require("smart-splits").setup({
	resize_mode = {
		silent = false,
	},
})

-- movement motions

vim.keymap.set("n", "<M-Left>", function()
	require("smart-splits").move_cursor_left()
end, { desc = "[M]ove cursor [Left]" })

vim.keymap.set("n", "<M-Right>", function()
	require("smart-splits").move_cursor_right()
end, { desc = "[M]ove cursor [Right]" })

vim.keymap.set("n", "<M-Up>", function()
	require("smart-splits").move_cursor_up()
end, { desc = "[M]ove cursor [Up]" })

vim.keymap.set("n", "<M-Down>", function()
	require("smart-splits").move_cursor_down()
end, { desc = "[M]ove cursor [Down]" })

-- resize motions

vim.keymap.set("n", "<M-S-Left>", function()
	require("smart-splits").resize_left()
end, { desc = "Resize [Left]" })

vim.keymap.set("n", "<M-S-Right>", function()
	require("smart-splits").resize_right()
end, { desc = "Resize [Right]" })

vim.keymap.set("n", "<M-S-Up>", function()
	require("smart-splits").resize_up()
end, { desc = "Resize [Up]" })

vim.keymap.set("n", "<M-S-Down>", function()
	require("smart-splits").resize_down()
end, { desc = "Resize [Down]" })
