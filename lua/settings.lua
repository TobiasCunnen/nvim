local o = vim.opt

--Spell check
o.spell = true
o.spelllang = {'en','nl'}

--Line numbers
o.number = true
o.relativenumber = true

-- Highlite cursorline
o.cursorline = true

--Search options
o.ignorecase = true
o.smartcase = true
o.hlsearch = false

--Tab and indetation
o.breakindent = true
o.tabstop = 2
o.softtabstop = 0
o.expandtab = true
o.smarttab = true
o.shiftwidth = 2


--Copy and paste from system clipboard
vim.keymap.set({'n', 'x'}, 'cp', '"+y')
vim.keymap.set({'n', 'x'}, 'cv', '"+p')

-- Disable: --INSERRT-- because use lua line
o.showmode = false

-- Theme and color settings
o.termguicolors = true
vim.cmd('colorscheme nightfox')
