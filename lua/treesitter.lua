-- Treesitter settings
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c_sharp", "lua", "rust", "python", "yaml", "dockerfile",},

	auto_install = true,

  highlight = {
    enable = true,

    disable = {"latex"},

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

vim.opt.foldmethod = "marker"
--vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
