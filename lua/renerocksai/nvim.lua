-- keymaps
vim.keymap.set('i', 'jk', '<esc>', { desc = 'esc to normal mode' })

-- vertically center search result position
vim.keymap.set('n', 'n', 'nzz', { remap = false })
vim.keymap.set('n', 'N', 'Nzz', { remap = false })
vim.keymap.set('n', '*', '*zz', { remap = false })
vim.keymap.set('n', '#', '#zz', { remap = false })
vim.keymap.set('n', 'g*', 'g*zz', { remap = false })
vim.keymap.set('n', 'g#', 'g#zz', { remap = false })

-- open diagnostics float
vim.keymap.set('n', '<leader>I', vim.diagnostic.open_float, { desc = 'diagnostics info float', remap = false })

-- options
vim.opt.colorcolumn = '80'
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
