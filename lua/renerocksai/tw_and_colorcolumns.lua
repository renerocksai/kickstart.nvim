-- Define a table for autocommands
local autocommands = {
  markdown = { textwidth = 80 },
  telekasten = { textwidth = 80 },
  mail = { textwidth = 72, colorcolumn = 72 },
  text = { textwidth = 72, colorcolumn = 72 },
}

-- Function to apply the settings
local function apply_settings(settings)
  if settings.textwidth then
    vim.opt_local.textwidth = settings.textwidth
  end
  if settings.colorcolumn then
    vim.opt_local.colorcolumn = tostring(settings.colorcolumn)
  end
end

-- Loop through the table and create autocommands
for filetype, settings in pairs(autocommands) do
  vim.api.nvim_create_autocmd('FileType', {
    pattern = filetype,
    callback = function()
      apply_settings(settings)
    end,
  })
end
