-- Vimux
vim.keymap.set('n', ',T', function()
  vim.api.nvim_command 'VimuxPromptCommand'
end, { desc = 'Vimux Promp[T] command' })

vim.keymap.set('n', ',t', function()
  vim.api.nvim_command 'VimuxRunLastCommand'
end, { desc = 'Vimux run last command' })
