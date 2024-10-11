-- keymaps
vim.keymap.set('i', 'jk', '<esc>', { desc = 'esc to normal mode' })

-- vertically center search result position
vim.keymap.set('n', 'n', 'nzz', { remap = false })
vim.keymap.set('n', 'N', 'Nzz', { remap = false })
vim.keymap.set('n', '*', '*zz', { remap = false })
vim.keymap.set('n', '#', '#zz', { remap = false })
vim.keymap.set('n', 'g*', 'g*zz', { remap = false })
vim.keymap.set('n', 'g#', 'g#zz', { remap = false })

-- options
vim.api.nvim_set_option_value('colorcolumn', '80', {})
