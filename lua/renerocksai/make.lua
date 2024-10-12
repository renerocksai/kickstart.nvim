-- Set the errorformat for Kotlin files
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'kotlin',
  callback = function()
    vim.bo.errorformat = ':compileKotlin%t: %f: (%l\\, %c): %m,%t: %f: (%l\\, %c): %m,%-G%.%#'
  end,
})

-- Build with :make
-- WARNING: conflicts with DAP set breakpoint
-- So if you use DAP, change these:
vim.api.nvim_set_keymap('n', '<leader>b', ':cclose<CR>:make!<bar>cwindow<CR>', { noremap = true, silent = true, desc = 'Build with :make' })
vim.api.nvim_set_keymap('n', '<leader>B', ':cclose<CR>:silent make!<bar>cwindow<CR>', { noremap = true, silent = true, desc = 'Build silently with :make' })
