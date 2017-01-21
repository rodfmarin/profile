set nocompatible
set t_Co=256
set laststatus=2
"highlight Normal ctermbg=NONE
"highlight nonText ctermbg=NONE
let g:airline_powerline_fonts = 1
let g:airline_theme = "cobalt2"

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Plugin 'fatih/vim-go'
Plugin 'klen/python-mode'
Plugin 'wting/rust.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
call vundle#end()
filetype plugin indent on
"colorscheme molokai 

set backspace=indent,eol,start
set number " Show line numbers
set background=dark
syntax on

" Folding *********************************************************************

set foldenable
set foldmethod=syntax
set foldlevelstart=99

" Tabs ************************************************************************
" Use 2 spaces
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" Searching *******************************************************************
set incsearch  " incremental search, search as you type

" Status Line *****************************************************************
set showcmd
set ruler " Show ruler

" Directories *****************************************************************
" Setup backup location and enable
set backupdir=~/.vim/backup
set backup
 
" Set Swap directory
set directory=~/.vim/backup/swap

set runtimepath+=$GOROOT/misc/vim

"let g:pymode_python = 'python3'

let g:pymode_rope_lookup_project = 0
let g:pymode_rope = 0



au BufRead,BufNewFile Jenkinsfile* setfiletype groovy
