local home = vim.fn.expand '~/zettelkasten'

require('telekasten').setup {
  media_previewer = 'viu-previewer',
  home = home,
  dailies = home .. '/' .. 'daily',
  weeklies = home .. '/' .. 'weekly',
  templates = home .. '/' .. 'templates',

  -- image subdir for pasting
  -- subdir name
  -- or nil if pasted images shouldn't go into a special subdir
  image_subdir = nil,

  -- markdown file extension
  extension = '.md',

  -- following a link to a non-existing note will create it
  follow_creates_nonexisting = true,
  dailies_create_nonexisting = true,
  weeklies_create_nonexisting = true,

  -- templates for new notes
  template_new_note = home .. '/' .. 'templates/new_note.md',
  template_new_daily = home .. '/' .. 'templates/daily_tk.md',
  template_new_weekly = home .. '/' .. 'templates/weekly_tk.md',

  -- image link style
  -- wiki:     ![[image name]]
  -- markdown: ![](image_subdir/xxxxx.png)
  image_link_style = 'markdown',

  -- integrate with calendar-vim
  plug_into_calendar = true,
  calendar_opts = {
    -- calendar week display mode: 1 .. 'WK01', 2 .. 'WK 1', 3 .. 'KW01', 4 .. 'KW 1', 5 .. '1'
    weeknm = 4,
    -- use monday as first day of week: 1 .. true, 0 .. false
    calendar_monday = 1,
    -- calendar mark: where to put mark for marked days: 'left', 'right', 'left-fit'
    calendar_mark = 'left-fit',
  },
  debug = false,

  close_after_yanking = false,
  insert_after_inserting = true,

  -- make syntax available to markdown buffers and telescope previewers
  install_syntax = true,

  -- tag notation: '#tag', ':tag:', 'yaml-bare'
  tag_notation = '#tag',

  -- command palette theme: dropdown (window) or ivy (bottom panel)
  command_palette_theme = 'ivy',

  vaults = {
    second = {
      home = '/home/rs/zettelkasten.test',
    },
  },
}

local telekasten = require 'telekasten'

vim.keymap.set('n', '<leader>nf', telekasten.find_notes, { desc = 'find notes', remap = false })
vim.keymap.set('n', '<leader>nD', telekasten.find_daily_notes, { desc = 'find daily notes', remap = false })
vim.keymap.set('n', '<leader>ng', telekasten.search_notes, { desc = 'g search notes', remap = false })
vim.keymap.set('n', '<leader>nz', telekasten.follow_link, { desc = 'z follow link', remap = false })
vim.keymap.set('n', '<leader>nd', telekasten.goto_today, { desc = 'goto today', remap = false })
vim.keymap.set('n', '<leader>nW', telekasten.goto_thisweek, { desc = 'goto this Week', remap = false })
vim.keymap.set('n', '<leader>nw', telekasten.find_weekly_notes, { desc = 'find weekly notes', remap = false })
vim.keymap.set('n', '<leader>nn', telekasten.new_note, { desc = 'new note', remap = false })
vim.keymap.set('n', '<leader>nN', telekasten.new_templated_note, { desc = 'new templated note', remap = false })
vim.keymap.set('n', '<leader>ny', telekasten.yank_notelink, { desc = 'yank note link', remap = false })
vim.keymap.set('n', '<leader>nc', telekasten.show_calendar, { desc = 'show calendar', remap = false })
vim.keymap.set('n', '<leader>ni', telekasten.paste_img_and_link, { desc = 'paste image and link', remap = false })
vim.keymap.set('n', '<leader>nt', telekasten.toggle_todo, { desc = 'toggle todo', remap = false })
vim.keymap.set('n', '<leader>nb', telekasten.show_backlinks, { desc = 'show backlinks', remap = false })
vim.keymap.set('n', '<leader>nF', telekasten.find_friends, { desc = 'find Friend notes', remap = false })
vim.keymap.set('n', '<leader>np', telekasten.preview_img, { desc = 'preview image', remap = false })
vim.keymap.set('n', '<leader>nm', telekasten.browse_media, { desc = 'browse media', remap = false })
-- panel not required in kickstart b/c whichkeys
-- vim.keymap.set('n', '<leader>n', telekasten.panel, { desc='', remap = false })
vim.keymap.set('n', '<leader>na', telekasten.show_tags, { desc = 'show tags', remap = false })

vim.keymap.set('n', '<leader>nC', '<cmd>CalendarT<CR>', { desc = 'show big Calendar', remap = false })

vim.keymap.set('n', '<leader>nI', function()
  telekasten.insert_img_link { i = true }
end, { desc = 'insert image link', remap = false })

vim.keymap.set('n', '<leader>nr', function()
  require('plenary.reload').reload_module 'telekasten'
end, { desc = 'reload Telekasten', remap = false })

-- " note: we define [[ in **insert mode** to call insert link
-- " note: we don't do this anymore - maybe it makes sense to limit to markdown
-- " mode
--
--
vim.keymap.set('i', ',[', function()
  telekasten.insert_link { i = true }
end, { remap = false })
vim.keymap.set('i', ',zt', function()
  telekasten.toggle_todo { i = true }
end, { remap = false })
vim.keymap.set('i', ',#', function()
  telekasten.show_tags { i = true }
end, { remap = false })

-- noremap <leader>P :MarkdownPreviewToggle<CR>

vim.cmd [[
" autocmd FileType markdown set syntax=telekasten

autocmd FileType telekasten nnoremap <CR> :lua require('telekasten').follow_link()<CR>

hi tklink ctermfg=72 guifg=#689d6a cterm=bold,underline gui=bold,underline
hi tkBrackets ctermfg=gray guifg=gray

" real yellow
hi tkHighlight ctermbg=yellow ctermfg=darkred cterm=bold guibg=yellow guifg=darkred gui=bold
" gruvbox
hi tkHighlight ctermbg=214 ctermfg=124 cterm=bold guibg=#fabd2f guifg=#9d0006 gui=bold

hi link CalNavi CalRuler
hi tkTagSep ctermfg=gray guifg=gray
hi tkTag ctermfg=175 guifg=#d3869B

"autocmd filetype calendar :IndentBlanklineDisable
autocmd filetype calendar :set signcolumn=no
]]
