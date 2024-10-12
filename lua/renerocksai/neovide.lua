-- Font name variable
local font_name = 'JetBrainsMonoNL Nerd Font Mono'
local start_size = '12'

-- Function to get the current font size
local function get_font_size()
  local guifont = vim.o.guifont
  local size = guifont:match ':h(%d+)'
  return tonumber(size)
end

-- Function to set the font size
local function set_font_size(new_size)
  vim.o.guifont = font_name .. ':h' .. new_size
end

-- Function to increase font size
function IncreaseFontSize()
  local current_size = get_font_size()
  set_font_size(current_size + 1)
end

-- Function to decrease font size
function DecreaseFontSize()
  local current_size = get_font_size()
  set_font_size(current_size - 1)
end

if vim.g.neovide then
  vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
  vim.keymap.set('v', '<D-c>', '"+y') -- Copy
  vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode

  vim.o.guifont = font_name .. ':h' .. start_size

  -- keymaps on the mac:
  --replace D with C for control+
  vim.api.nvim_set_keymap('n', '<D-=>', ':lua IncreaseFontSize()<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<D-->', ':lua DecreaseFontSize()<CR>', { noremap = true, silent = true })
end
-- <D-=>

-- Allow macos clipboard copy paste keys in neovim
vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true })
