function Set_mini_indentscope_highlight()
  vim.api.nvim_set_hl(0, 'MiniIndentscopeSymbol', {
    fg = '#E06C75',
  })
end

Set_mini_indentscope_highlight()

return {
  Set_Indentscope_Highlight = Set_mini_indentscope_highlight,
}
