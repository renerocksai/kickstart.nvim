-- Set the errorformat for Kotlin files
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'kotlin',
  callback = function()
    vim.bo.errorformat = ':compileKotlin%t: %f: (%l\\, %c): %m,%t: %f: (%l\\, %c): %m,%-G%.%#'
  end,
})

-- Define normal mode key mappings
vim.api.nvim_set_keymap('n', '<space>b', ':cclose<CR>:make!<bar>cwindow<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>B', ':cclose<CR>:silent make!<bar>cwindow<CR>', { noremap = true, silent = true })
