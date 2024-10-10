vim.keymap.set('n', ',gg', function()
  vim.api.nvim_command 'G'
end, { desc = '[g]it Status' })

vim.keymap.set('n', ',gt', function()
  vim.api.nvim_command 'G commit'
end, { desc = '[g]it commi[t]' })

vim.keymap.set('n', ',gp', function()
  vim.api.nvim_command 'G push'
end, { desc = '[g]it [p]ush' })

vim.keymap.set('n', '<leader>gg', function()
  vim.api.nvim_command 'G'
end, { desc = '[g]it Status' })

vim.keymap.set('n', '<leader>gt', function()
  vim.api.nvim_command 'G commit'
end, { desc = '[g]it commi[t]' })

vim.keymap.set('n', '<leader>gp', function()
  vim.api.nvim_command 'G push'
end, { desc = '[g]it [p]ush' })
