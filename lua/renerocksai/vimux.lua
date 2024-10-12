-- Vimux
vim.keymap.set('n', ',T', '<cmd>VimuxPromptCommand<cr>', { desc = 'Vimux Prompt command' })
vim.keymap.set('n', ',t', '<cmd>VimuxRunLastCommand<cr>', { desc = 'Vimux run last command' })

-- Tmux navigator: write all buffers before navigating from Vim to tmux pane
vim.g.tmux_navigator_save_on_switch = 2

-- Disable tmux navigator when zooming the Vim pane
vim.g.tmux_navigator_disable_when_zoomed = 1
