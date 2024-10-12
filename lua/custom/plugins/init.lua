-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'tpope/vim-fugitive',
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
  'https://git.sr.ht/~renerocksai/calendar-vim',
  'MunifTanjim/nui.nvim',
  'renerocksai/ChatGPT.nvim',
  'renerocksai/CommandPrompt.nvim',
  'elihunter173/dirbuf.nvim',
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
}
