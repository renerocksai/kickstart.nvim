-- Vimux
vim.keymap.set('n', ',T', function()
  vim.api.nvim_command 'VimuxPromptCommand'
end, { desc = 'Vimux Promp[T] command' })

vim.keymap.set('n', ',t', function()
  vim.api.nvim_command 'VimuxRunLastCommand'
end, { desc = 'Vimux run last command' })

vim.cmd [[
" tmux navigator
" write all buffers before navigating from vim to tmux pane
let g:tmux_navigator_save_on_switch = 2
" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1
]]
