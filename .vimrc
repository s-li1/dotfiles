syntax on

set noerrorbells
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set smartcase
set noswapfile
set nobackup
set undofile
set incsearch

"set colorcolumn=80
"highlight ColorColumn ctermbg=0 guibg=lightgrey

inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha
inoremap {<Enter> {<Enter>}<Esc>O
inoremap (<Enter> (<Enter>)<Esc>O

nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

"This is macOS specific for moving lines around with ALT J or K
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv
nnoremap <C-n> :bnext<CR>
nnoremap <C-m> :bprev<CR>

set hidden
set title

