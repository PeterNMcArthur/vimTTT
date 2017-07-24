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
" easy commenting
Plugin 'scrooloose/nerdcommenter'
"JSX syntax higlighting and indenting	
Plugin 'pangloss/vim-javascript'
" Syntax error checking 
Plugin 'posva/vim-vue'
" Buffer display bar
Plugin 'bling/vim-bufferline'
" JavaScript improved syntax highlighting
Plugin 'mxw/vim-jsx'
" ionic 2
Plugin 'akz92/vim-ionic2'
" TypeScript moar
Plugin 'quramy/tsuquyomi'
" typeScript support
Plugin 'leafgarland/typescript-vim'
" elixir lang syntax highlighting
Plugin 'elixir-lang/vim-elixir'

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
let g:jsx_ext_required = 0
map <C-n> :NERDTreeToggle<CR>
let mapleader = "\<space>"
runtime macros/matchit.vim

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_html_tidy_ignore_errors=["<ion-", "discarding unexpected </ion-", " proprietary attribute \"ng-"]
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif
set t_Co=256

