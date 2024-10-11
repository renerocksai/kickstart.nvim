-- keymaps
vim.keymap.set('i', 'jk', '<esc>', { desc = 'esc to normal mode' })

-- vertically center search result position
vim.keymap.set('n', 'n', 'nzz', { remap = false })
vim.keymap.set('n', 'N', 'Nzz', { remap = false })
vim.keymap.set('n', '*', '*zz', { remap = false })
vim.keymap.set('n', '#', '#zz', { remap = false })
vim.keymap.set('n', 'g*', 'g*zz', { remap = false })
vim.keymap.set('n', 'g#', 'g#zz', { remap = false })

-- open diagnostics float
vim.keymap.set('n', '<leader>I', vim.diagnostic.open_float, { desc = 'diagnostics info float', remap = false })

-- options
vim.opt.colorcolumn = '80'
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4

-- allow .nvim.lua local configs
vim.opt.exrc = true

vim.opt.visualbell = true

vim.opt.termguicolors = true

local highlight = {
  'RainbowRed',
  -- 'RainbowYellow',
  -- 'RainbowBlue',
  -- 'RainbowOrange',
  -- 'RainbowGreen',
  -- 'RainbowViolet',
  -- 'RainbowCyan',
}

local hooks = require 'ibl.hooks'
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, 'RainbowRed', { fg = '#E06C75' })
  -- vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = '#E5C07B' })
  -- vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = '#61AFEF' })
  -- vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = '#D19A66' })
  -- vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = '#98C379' })
  -- vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = '#C678DD' })
  -- vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = '#56B6C2' })
end)

require('ibl').setup {
  -- indent = { char = '┊', highlight = highlight },
  indent = { char = '┊' },
  scope = { enabled = true, highlight = highlight },
}
