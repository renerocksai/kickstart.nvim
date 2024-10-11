-- Telescope
vim.keymap.set('n', ',ff', '<cmd>Telescope find_files<cr>', { desc = 'find files' })
vim.keymap.set('n', ',fg', '<cmd>Telescope live_grep<cr>', { desc = 'find grep' })
vim.keymap.set('n', ',fb', '<cmd>Telescope buffers<cr>', { desc = 'find buffers - use <spc><spc>!' })
vim.keymap.set('n', ',fh', '<cmd>Telescope help_tags<cr>', { desc = 'find help' })
vim.keymap.set('n', ',fm', '<cmd>Telescope man_pages<cr>', { desc = 'find man pages' })
vim.keymap.set('n', ',fc', '<cmd>Telescope git_commits<cr>', { desc = 'find commits' })

vim.api.nvim_set_keymap('i', 'eE', '<cmd>Telescope symbols<cr>', { silent = true, noremap = true })
