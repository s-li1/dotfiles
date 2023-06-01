require('plugins')
require('lsp')
require('color-scheme')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.o.termguicolors = true



-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
-- vim.opt.termguicolors = true

require('nvim-tree').setup({
  sort_by = 'case-sensitive',
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  actions = {
    open_file = {
      resize_window = true,
    }
  },
})

vim.keymap.set('n', '<C-S>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>dd', ':Gdiffsplit<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gh', ':DiffviewFileHistory<CR>', {})

-- ALT D and W on MacOs
vim.keymap.set('n', '∂', ':DiffviewOpen<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '∑', ':DiffviewClose<CR>', { noremap = true, silent = true })

vim.cmd([[
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
highlight NormalFloat ctermfg=LightGrey
highlight Pmenu ctermbg=gray guibg=gray
highlight SignifySignAdd    ctermfg=green  guifg=#00ff00 cterm=NONE gui=NONE
highlight SignifySignDelete ctermfg=red    guifg=#ff0000 cterm=NONE gui=NONE
highlight SignifySignChange ctermfg=yellow guifg=#ffff00 cterm=NONE gui=NONE
highlight Directory guifg=#b3deef ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight DiffAdd guifg=NONE ctermfg=NONE guibg=#464632 ctermbg=238 gui=NONE cterm=NONE
highlight DiffChange guifg=NONE ctermfg=NONE guibg=#335261 ctermbg=239 gui=NONE cterm=NONE
highlight DiffDelete guifg=#f43753 ctermfg=203 guibg=#79313c ctermbg=237 gui=NONE cterm=NONE
highlight DiffText guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=reverse cterm=reverse

colorscheme tokyonight
]])
