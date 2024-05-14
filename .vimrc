set nocompatible
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set autoindent			" Copy indent from the line above
set autoread			" Reload files changed outside of vim
set autowrite           " Automatically save before commands like :next and :make
set smartindent			" Set smart-indent
set showmatch			" Show matching brackets
set ignorecase			" Do case insensitive matching
set smartcase			" Do smart case matching
set incsearch			" Incremental search
set hlsearch			" Highlight search results
set expandtab			" Expand tab into spaces

set termguicolors		" Get truecolors
set nobackup            " Disable backups
set noswapfile

syntax on
filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree' 
Plugin 'ryanoasis/vim-devicons'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

" open/close NERDTree when starting/closing vim
autocmd VimEnter * 
			\ NERDTree | wincmd p
autocmd BufEnter * 
			\ if tabpagenr('$') == 1
			\ && winnr('$') == 1 && exists('b:NERDTree')
			\ && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
nnoremap <C-t> :NERDTreeToggle<CR>

" Airline plugin
let g:airline_powerline_fonts=1
let g:airline_detect_whitespace=0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_theme='lucius'

" Return to last position when opening a file
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
      \| exe "normal g'\"" | endif
