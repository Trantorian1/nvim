vim.o.ts = 2
vim.o.sts = 2
vim.o.sw = 2

vim.treesitter.start()

-- Exit if the language server isn't available
if vim.fn.executable("nil") ~= 1 then
	return
end

vim.lsp.enable("nil_ls")
