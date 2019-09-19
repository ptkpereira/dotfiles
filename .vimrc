set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'isRuslan/vim-es6'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'powerline/powerline', {'rtp':'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'elzr/vim-json'
Plugin 'benmills/vimux'
Plugin 'dracula/vim'

call vundle#end()            " required
filetype plugin indent on    " required

set shell=/bin/bash
set encoding=utf-8
set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=80
set expandtab
set autoindent
set clipboard=unnamed
syntax on
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

augroup filetype javascript syntax=javascript
let g:javascript_plugin_jsdoc = 1

map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

colorscheme dracula
set number

set laststatus=2
set t_Co=256
"set rtp+=/usr/share/powerline/bindings/vim-teste

" vim-airline
let g:airline_theme = 'minimalist'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'
