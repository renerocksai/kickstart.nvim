-- Telescope
vim.keymap.set('n', ',ff', function()
  vim.api.nvim_command 'Telescope find_files'
end, { desc = '[f]ind [f]files' })

vim.keymap.set('n', ',fg', function()
  vim.api.nvim_command 'Telescope live_grep'
end, { desc = '[f]ind [g]rep' })

vim.keymap.set('n', ',fb', function()
  vim.api.nvim_command 'Telescope buffers'
end, { desc = '[f]ind [b]uffers - use <spc><spc>!' })

vim.keymap.set('n', ',fh', function()
  vim.api.nvim_command 'Telescope help_tags'
end, { desc = '[f]ind [h]elp' })

vim.keymap.set('n', ',fm', function()
  vim.api.nvim_command 'Telescope man_pages'
end, { desc = '[f]ind [m]an pages' })

vim.keymap.set('n', ',fc', function()
  vim.api.nvim_command 'Telescope git_commits'
end, { desc = '[f]ind [c]ommits' })
