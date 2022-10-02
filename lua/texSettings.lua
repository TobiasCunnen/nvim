-- Latex keybindings
vim.keymap.set('n', '<leader>ll', [[<Cmd>!pdflatex %<CR>]], opts)
vim.keymap.set('n', '<leader>lv', [[<Cmd>!xdg-open %:r.pdf<CR><CR>]], opts)

