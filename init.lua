require('settings')

require('plugins')

require('treesitter')

require('tscope')

require('line')

require('texSettings')

-- Lsp and autocomplete
require('lspSetup')
require('autocompleteKeybinds')
require('autocmp')

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup()
require('lint').linters_by_ft = {
   markdown = {'vale',},
   latex = {'vale',}
}
require("formatter").setup()

require('Comment').setup()
