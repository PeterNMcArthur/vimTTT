set nocompatible              " be iMproved, required
filetype on
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ===============
" Plugins
" ===============

" File Manager 
Plugin 'scrooloose/nerdTree'
" surround
Plugin 'tpope/vim-surround'
" status bar
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Vue synatx highlighting
Plugin 'posva/vim-vue'
" Buffer display bar
Plugin 'bling/vim-bufferline'
" JavaScript improved syntax highlighting
Plugin 'pangloss/vim-javascript'
" Syntax error checking 
Plugin 'scrooloose/syntastic'
" Emmet
Plugin 'mattn/emmet-vim'
" EJS highlighting 
Plugin 'briancollins/vim-jst'
" Adds autoComplete to Vim
Plugin 'Valloric/YouCompleteMe'
" Git wrapper
Plugin 'tpope/vim-fugitive'
" Git diff in the gutter
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ===============
" Config
" ===============

:syntax on
:set tabstop=2 number shiftwidth=2 clipboard=unnamed relativenumber noexpandtab autoread
:colorscheme predawn
map <F2> :NERDTreeToggle<CR>
runtime macros/matchit.vim

