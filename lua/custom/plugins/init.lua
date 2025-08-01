-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'tpope/vim-fugitive',
  {
    'rbong/vim-flog',
    lazy = true,
    cmd = { 'Flog', 'Flogsplit', 'Floggit' },
    dependencies = {
      'tpope/vim-fugitive',
    },
  },
  'Bekaboo/dropbar.nvim',
  'benmills/vimux',
  'roxma/vim-tmux-clipboard',
  'christoomey/vim-tmux-navigator',
  'ziglang/zig.vim',
  'nvim-telescope/telescope-media-files.nvim',
  'nvim-telescope/telescope-symbols.nvim',
  {
    'declancm/cinnamon.nvim',
    version = '*', -- use latest release
    opts = {
      -- change default options here
    },
  },
  'renerocksai/telekasten.nvim',
  'renerocksai/calendar-vim',
  'MunifTanjim/nui.nvim',
  'renerocksai/ChatGPT.nvim',
  'renerocksai/CommandPrompt.nvim',
  -- 'elihunter173/dirbuf.nvim',  -- the old way: still love it
  -- but let's try oil
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if prefer nvim-web-devicons
  },
  -- fuck that guy
  -- {
  --   'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
  --   opts = {},
  -- },
  {
    'folke/trouble.nvim',
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = 'Trouble',
    keys = {
      {
        '<leader>xx',
        '<cmd>Trouble diagnostics toggle<cr>',
        desc = 'Diagnostics (Trouble)',
      },
      {
        '<leader>xX',
        '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
        desc = 'Buffer Diagnostics (Trouble)',
      },
      {
        '<leader>cs',
        '<cmd>Trouble symbols toggle focus=false<cr>',
        desc = 'Symbols (Trouble)',
      },
      {
        '<leader>cl',
        '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
        desc = 'LSP Definitions / references / ... (Trouble)',
      },
      {
        '<leader>xL',
        '<cmd>Trouble loclist toggle<cr>',
        desc = 'Location List (Trouble)',
      },
      {
        '<leader>xQ',
        '<cmd>Trouble qflist toggle<cr>',
        desc = 'Quickfix List (Trouble)',
      },
    },
  },
  {
    'EdenEast/nightfox.nvim',
  },
  {
    'Mofiqul/vscode.nvim',
  },
  {
    'maxmx03/solarized.nvim',
    lazy = false,
    priority = 1000,
    -- ---@type solarized.config
    opts = {
      variant = 'autumn',
      palette = 'selenized',
      plugins = {},
    },
    config = function(_, opts)
      opts.variant = 'winter'
      vim.o.termguicolors = true
      vim.o.background = 'light'
      require('solarized').setup(opts)
      -- vim.cmd.colorscheme 'solarized'
    end,
  },

  { 'glacambre/firenvim', build = ":call firenvim#install(0)" },
}
