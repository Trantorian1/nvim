if vim.g.did_load_oil_git then
	return
end
vim.g.did_load_oil_git = true

require("oil-git").setup({
	show_file_highlights = true,
	show_directory_highlights = true,
	show_file_symbols = true,
	show_directory_symbols = true,

	highlights = {
		OilGitAdded = { fg = "#a6e3a1" }, -- green
		OilGitModified = { fg = "#f9e2af" }, -- yellow
		OilGitRenamed = { fg = "#cba6f7" }, -- purple
		OilGitUntracked = { fg = "#89b4fa" }, -- blue
		OilGitIgnored = { fg = "#6c7086" }, -- gray
	},
})
