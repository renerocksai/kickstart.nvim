local OPENAI_API_KEY = os.getenv 'OPENAI_API_KEY'
if not OPENAI_API_KEY then
  print 'OPENAI_API_KEY not set! ChatGPT will not be available!'
  return
end

require('chatgpt').setup {
  welcome_message = 'Hi Rene!',
  actions_paths = { '/Users/rs/.config/nvim/chatgpt_actions.json' },
  loading_text = 'loading',
  question_sign = '', -- you can use emoji if you want e.g. 🙂
  answer_sign = 'ﮧ', -- 🤖
  max_line_length = 120,
  yank_register = '+',
  chat_layout = {
    relative = 'editor',
    position = '50%',
    size = {
      height = '80%',
      width = '80%',
    },
  },
  settings_window = {
    border = {
      style = 'rounded',
      text = {
        top = ' Settings ',
      },
    },
  },
  chat_window = {
    filetype = 'chatgpt',
    border = {
      highlight = 'FloatBorder',
      style = 'rounded',
      text = {
        top = ' ChatGPT ',
      },
    },
  },
  chat_input = {
    prompt = '  ',
    border = {
      highlight = 'FloatBorder',
      style = 'rounded',
      text = {
        top_align = 'center',
        top = ' Prompt ',
      },
    },
  },
  openai_params = {
    model = 'gpt-3.5-turbo',
    frequency_penalty = 0,
    presence_penalty = 0,
    max_tokens = 300,
    temperature = 0,
    top_p = 1,
    n = 1,
  },
  openai_edit_params = {
    model = 'code-davinci-edit-001',
    temperature = 0,
    top_p = 1,
    n = 1,
  },
  keymaps = {
    close = { '<C-c>' },
    submit = '<C-s>',
    yank_last = '<C-y>',
    yank_last_code = '<C-k>',
    scroll_up = '<C-u>',
    scroll_down = '<C-d>',
    toggle_settings = '<C-o>',
    new_session = '<C-n>',
    cycle_windows = '<Tab>',
    -- in the Sessions pane
    select_session = '<Space>',
    rename_session = 'r',
    delete_session = 'd',
  },
}

require('commandprompt').setup {
  {
    description = 'GPT-4 clear-and-concise-with-refs',
    cmd = ':ChatGPTRun gpt4-clear-and-concise-with-refs',
  },
  {
    description = 'GPT-4 clear-and-concise',
    cmd = ':ChatGPTRun gpt4-clear-and-concise',
  },
  {
    description = 'GPT-4 pass-through',
    cmd = ':ChatGPTRun gpt4-passthrough',
  },
  {
    description = 'Summarize',
    cmd = ':ChatGPTRun turbo-sum',
  },
  {
    description = 'Make it sound more professional',
    cmd = ':ChatGPTRun en-professional',
  },
  {
    description = 'Make it sound more easy',
    cmd = ':ChatGPTRun en-easy',
  },
  {
    description = 'Make e-mail sound more friendly',
    cmd = ':ChatGPTRun en-friendly',
  },
  {
    description = 'Freundlichere E-Mail',
    cmd = ':ChatGPTRun de-friendly',
  },
  {
    description = 'Pass-through',
    cmd = ':ChatGPTRun pass-through',
  },
}

-- Add a keymapping to open the command picker
vim.keymap.set('v', '<leader>g', function()
  vim.inspect(require('commandprompt'))
  require('commandprompt').command_picker()
end, { desc = 'Open ChatGPT command prompt picker', noremap = true, silent = true })
