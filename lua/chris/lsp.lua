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
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lsp = require("lspconfig")
-- lua
lsp.lua_ls.setup {
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        }
    }
}

-- markdown
lsp.marksman.setup {
    capabilities = capabilities,
}
-- go
lsp.gopls.setup {
    capabilities = capabilities,
}
-- html
lsp.html.setup {
    capabilities = capabilities,
}
-- json
lsp.jsonls.setup {
    capabilities = capabilities,
}
-- java
lsp.jdtls.setup {
    capabilities = capabilities,
    root_dir = vim.fn.getcwd
}
-- typescript
lsp.tsserver.setup {
    capabilities = capabilities,
}
-- python
lsp.pyright.setup {
    capabilities = capabilities,
}
-- css
lsp.cssls.setup {
    capabilities = capabilities,
}
-- swift
lsp.swift_mesonls.setup {
    capabilities = capabilities,
}
-- rust
lsp.rust_analyzer.setup({
  capabilities = capabilities,
  filetypes = {"rust"},
  settings = {
    ['rust_analyzer'] = {
      cargo = {
        allFeatures = true,
      },
    },
  },
})
