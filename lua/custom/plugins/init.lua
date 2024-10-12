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
}
