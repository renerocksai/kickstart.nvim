local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
-- local c = ls.choice_node
local i = ls.insert_node
local conds = require 'luasnip.extras.expand_conditions'

M = {}

function M.init_snippets()
  ls.add_snippets('all', {
    -- shit to test if snips completion is working
    s('xxx', {
      i(1),
      t({
        'this is xxx',
      }, {
        -- condition = conds.line_begin,
      }),
    }),
  })

  ls.add_snippets('text', {
    s('lg', {
      i(1),
      t({
        '',
        'LG, Rene',
        -- "",
        -- "______________________________________________________________________________",
      }, {
        condition = conds.line_begin,
      }),
    }),
    s('MIT', {
      i(1),
      t({
        'MIT License',
        '',
        'Copyright (c) 2024 Rene Schallner',
        '',
        'Permission is hereby granted, free of charge, to any person obtaining a copy',
        'of this software and associated documentation files (the "Software"), to deal',
        'in the Software without restriction, including without limitation the rights',
        'to use, copy, modify, merge, publish, distribute, sublicense, and/or sell',
        'copies of the Software, and to permit persons to whom the Software is',
        'furnished to do so, subject to the following conditions:',
        '',
        'The above copyright notice and this permission notice shall be included in all',
        'copies or substantial portions of the Software.',
        '',
        'THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR',
        'IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,',
        'FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE',
        'AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER',
        'LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,',
        'OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE',
        'SOFTWARE.',
      }, {
        condition = conds.line_begin,
      }),
    }),
    s('sig', {
      i(1),
      t {
        '',
        '',
        '///',
        -- "",
        'Rene Schallner',
        'Chief Founding Engineer / ZML',
        'rene@zml.ai',
        '',
      },
    }),
    s('psig', {
      i(1),
      t {
        '',
        '',
        '///',
        -- "",
        'Rene Schallner',
        'AI Consulting',
        'rene@renerocks.ai',
        '',
      },
    }),
  })
  ls.filetype_extend('mail', { 'text' })
  ls.filetype_extend('markdown', { 'text' })
  ls.filetype_extend('telekasten', { 'text' })

  -- print(vim.inspect(ls.snippets))
end

M.init_snippets()
return M
