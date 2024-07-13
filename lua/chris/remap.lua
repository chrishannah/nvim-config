vim.keymap.set("n", "<leader>bf", function()
	require("blogutils").generateFrontMatter()
end)

vim.keymap.set("n", "<leader>fe", ":NvimTreeToggle<cr>")

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = args.buf })
	end,
})

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
