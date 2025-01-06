local function toggle_tokyonight()
  -- Get the current colorscheme
  local current_scheme = vim.api.nvim_exec2('echo g:colors_name', { output = true }).output

  -- Check the current colorscheme and toggle accordingly
  print('colorscheme is', current_scheme)
  if current_scheme == 'dayfox' then
    vim.cmd 'colorscheme nordfox'
  elseif current_scheme == 'nordfox' then
    vim.cmd 'colorscheme tokyonight-moon'
  elseif current_scheme == 'tokyonight-moon' then
    vim.cmd 'colorscheme tokyonight-night'
  elseif current_scheme == 'tokyonight-night' then
    vim.cmd 'colorscheme tokyonight-day'
  elseif current_scheme == 'tokyonight-day' then
    vim.cmd 'colorscheme dayfox'
  else
    -- If colorscheme is unexpected, set it to tokyonight-moon
    vim.cmd 'colorscheme tokyonight-moon'
  end
  require('renerocksai.mini_indentscope').Set_Indentscope_Highlight()
end

vim.keymap.set('n', 'tt', toggle_tokyonight, { desc = 'toggle tokyonight colorscheme', silent = true })
vim.keymap.set('n', ' tt', toggle_tokyonight, { desc = 'toggle [t]okyonight colorscheme', silent = true })
