vim.g.mapleader = ","

vim.keymap.set("n", "<leader>bf", function()
    require("blogutils").generateFrontMatter()
end)


vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
    end,
})
