" ===============
" Config
" ===============
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Navigation
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'

" All languages
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'scrooloose/nerdcommenter'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'editorconfig/editorconfig-vim'

" Git 
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" HTML
Plug 'mattn/emmet-vim'

" JavaScript
Plug 'briancollins/vim-jst'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'w0rp/ale'

" Elixir
Plug 'elixir-lang/vim-elixir'

" Initialize plugin system
call plug#end()

" :UltiSnips
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsListSnippets="<c-s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" Native Vim settings
:syntax on
:set tabstop=2 number shiftwidth=2 relativenumber noexpandtab autoread
:colorscheme elflord
let g:jsx_ext_required = 0
map <C-n> :NERDTreeToggle<CR>
runtime macros/matchit.vim
" map <c-a> :echo 'Current time is ' . strftime('%c')<CR>
let mapleader=" "
nnoremap <Leader>f :echo 'Current time is ' . strftime('%c')<CR>

" Keep undo history across sessions by storing it in a file
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif
set t_Co=256

