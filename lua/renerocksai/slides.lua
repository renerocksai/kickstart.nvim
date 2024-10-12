vim.api.nvim_create_autocmd('FileType', {
  pattern = 'scheme',
  callback = function()
    vim.bo.filetype = 'slides'
  end,
})
