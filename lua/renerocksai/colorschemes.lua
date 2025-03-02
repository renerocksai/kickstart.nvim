-- we need this, especially with solarized_light
vim.opt.guicursor = 'n-v-c:block-Cursor,i-ci-ve:ver25-Cursor,r-cr:hor20-Cursor,o:hor50-Cursor'

require 'neo-tree'
print(vim.inspect(vim.api.nvim_get_hl(0, { name = 'NeoTreeCursorLine' })))

-- setup vscode.nvim
-- For dark theme (neovim's default)
vim.o.background = 'dark'
-- For light theme
-- vim.o.background = 'light'

local function vscode_theme()
  local c = require('vscode.colors').get_colors()
  require('vscode').setup {
    -- Alternatively set style in setup
    -- style = 'light'

    -- Enable transparent background
    transparent = true,

    -- Enable italic comment
    italic_comments = true,

    -- Underline `@markup.link.*` variants
    underline_links = true,

    -- Disable nvim-tree background color
    disable_nvimtree_bg = true,

    -- Apply theme colors to terminal
    terminal_colors = true,

    -- Override colors (see ./lua/vscode/colors.lua)
    color_overrides = {
      vscLineNumber = '#FFFFFF',
    },

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
      -- this supports the same val table as vim.api.nvim_set_hl
      -- use colors from this colorscheme by requiring vscode.colors!
      Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
    },
  }
  -- require('vscode').load()

  -- load the theme without affecting devicon colors.
  vim.cmd.colorscheme 'vscode'
end

local function solarized_light()
  vim.o.background = 'light'

  vim.cmd.colorscheme 'solarized'
  vim.api.nvim_set_hl(0, 'CursorLine', { background = '#bcb5a3' })
end

local function toggle_tokyonight()
  -- Get the current colorscheme
  local current_scheme = vim.api.nvim_exec2('echo g:colors_name', { output = true }).output

  -- Check the current colorscheme and toggle accordingly
  print('colorscheme was', current_scheme)
  if current_scheme == 'solarized' then
    vim.cmd 'colorscheme nordfox'
  elseif current_scheme == 'nordfox' then
    vscode_theme()
    vim.cmd 'colorscheme vscode'
  elseif current_scheme == 'vscode' then
    vim.cmd 'colorscheme tokyonight-moon'
  elseif current_scheme == 'tokyonight-moon' then
    vim.cmd 'colorscheme tokyonight-night'
  elseif current_scheme == 'tokyonight-night' then
    vim.cmd 'colorscheme tokyonight-day'
  elseif current_scheme == 'tokyonight-day' then
    vim.cmd 'colorscheme dayfox'
  elseif current_scheme == 'dayfox' then
    solarized_light()
  else
    -- If colorscheme is unexpected, set it to tokyonight-moon
    vim.cmd 'colorscheme tokyonight-moon'
  end
  require('renerocksai.mini_indentscope').Set_Indentscope_Highlight()
  current_scheme = vim.api.nvim_exec2('echo g:colors_name', { output = true }).output
  print('colorscheme is', current_scheme)
end

vim.keymap.set('n', 'tt', toggle_tokyonight, { desc = 'toggle tokyonight colorscheme', silent = true })
vim.keymap.set('n', ' tt', toggle_tokyonight, { desc = 'toggle [t]okyonight colorscheme', silent = true })
