return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {
      indent = { char = '┊' },
      scope = {
        enabled = false,
        show_start = true,
        show_end = false,
        exclude = {
          language = {
            'help',
          },
        },
      },
    },
  },
}
