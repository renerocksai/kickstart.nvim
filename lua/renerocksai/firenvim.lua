
if vim.g.started_by_firenvim == true then
  -- vim.o.laststatus = 0
  vim.o.guifont = 'Fira_Code:h14'

  vim.g.firenvim_config = {
    localSettings = {
      ['.*'] = { takeover = 'never' }
    }
  }

  vim.api.nvim_create_autocmd({'BufEnter'}, {
    pattern = "*edit-*json-editor_*",
    command = "set filetype=json"
  })
  vim.api.nvim_create_autocmd({'BufEnter'}, {
    pattern = "*edit-*csv-editor_*",
    command = "set filetype=csv"
  })
  vim.api.nvim_create_autocmd({'BufEnter'}, {
    pattern = "*edit-*tex-editor_*",
    command = "set filetype=tex"
  })
  print("firenvim initialized")
  vim.print(vim.g.firenvim_config)
else
  -- vim.o.laststatus = 2
end
