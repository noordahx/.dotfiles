:set number 
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
syntax on
filetype plugin indent on


call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/terryma/vim-multiple-cursors'
" Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}


call plug#end()

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

let g:coc_disable_startup_warning = 1

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nmap <F8> :TagbarToggle<CR>

inoremap {<CR> {<CR>}<Esc>O

inoremap <silent><expr> <tab> coc#pum#visible() ? coc#pum#confirm() : "\<C-y>"
