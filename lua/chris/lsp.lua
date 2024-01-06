require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup({
    ensure_installed = { 
        "lua_ls", 
        "marksman",
        "gopls",
        "html",
        "jsonls",
        "jdtls",
        "tsserver",
        "cssls",
        "pyright",
        "swift_mesonls"
    },
})

-- setup individual lsps
-- lua
require("lspconfig").lua_ls.setup {}
-- markdown
require("lspconfig").marksman.setup {}
-- go
require("lspconfig").gopls.setup {}
-- html
require("lspconfig").html.setup {}
-- json
require("lspconfig").jsonls.setup {}
-- java
require("lspconfig").jdtls.setup {}
-- typescript
require("lspconfig").tsserver.setup {}
-- python
require("lspconfig").pyright.setup {}
-- css
require("lspconfig").cssls.setup {}
-- swift
require("lspconfig").swift_mesonls.setup {}
