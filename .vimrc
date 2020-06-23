set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'Bling/vim-airline'
Plugin 'vim-ruby/vim-ruby'
Plugin 'scrooloose/nerdtree'
Plugin 'othree/yajs.vim'
Plugin 'tomasr/molokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
colo molokai
let g:molokai_original = 1

set relativenumber
set nowrap
set cursorline
set guifont=Input\ Mono:h15
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
autocmd CursorMoved * :set relativenumber
autocmd FocusLost * :set number
autocmd FocusGained * :set relativenumber
set laststatus=2
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:ctrlp_show_hidden = 1

let g:vimrubocop_keymap = 0
let mapleader = ','
nmap <Leader>r :RuboCop<CR>
nmap <C-n> :NERDTreeToggle<CR>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
set clipboard=unnamed
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
" nnoremap <A-j> :m .+1<CR>==
" nnoremap <A-k> :m .-2<CR>==
" inoremap <A-j> <Esc>:m .+1<CR>==gi
" inoremap <A-k> <Esc>:m .-2<CR>==gi
" vnoremap <A-j> :m '>+1<CR>gv=gv
" vnoremap <A-k> :m '<-2<CR>gv=gv
if has("gui_running")
  set macligatures
endif
set guifont=Input\ Mono:h12
autocmd BufEnter * lcd %:p:h

