""""""""""""""""""""""""""""""""""""""""""""""""
" Setup Vundler for plugin management
""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" NERD tree - tree explorer
Plugin 'scrooloose/nerdtree'

" Ctrl-p
Plugin 'kien/ctrlp.vim'

" Comments
Plugin 'tomtom/tcomment_vim'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" MultipleCursors
Plugin 'terryma/vim-multiple-cursors'

" MiniBufExpl
Plugin 'fholgado/minibufexpl.vim'

" Plugin 'bling/vim-bufferline'

" vim-gitgutter
Plugin 'airblade/vim-gitgutter'

" vim-flake8
Plugin 'nvie/vim-flake8'

" ale
Plugin 'dense-analysis/ale'

" Track the engine.
Plugin 'SirVer/ultisnips'

" " Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Keybindings
"""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","       " leader is comma

" map esc to jk
inoremap jk <Esc>

" turn off search highlight with ,-<space>
nnoremap <leader><space> :nohlsearch<CR>

" Invoke Ctrl-p with c-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
    \ 'dir': '\.git\|logs\|resources$'
    \ }


""""""""""""""""""""""""""""""""""""""""""""""""
" General Configuration
""""""""""""""""""""""""""""""""""""""""""""""""
" Automatically update a file if it is changed externally
set autoread

" Height of the command bar
set cmdheight=2

set hlsearch	    " highlight search matches
set incsearch	    " search while characters are entered

" search is case-insensitive by default
set ignorecase

" Show linenumbers
set number
set relativenumber

set showcmd	" show last command in the bottom right

set ruler	" always show current position

" Line wrap (number of cols)
set wrap	    " wrap lines only visually
set linebreak	    " wrap only at valid characters
set textwidth=0	    " prevent vim from inserting linebreaks
set wrapmargin=0    "   in newly entered text


" show matching braces
set showmatch

set wildmenu	    " visual autocomplete for command menu

"""""""""""""""""""""""""""""""""""""""""""""""""
" Backups, Swap Files
"""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax on

" UTF-8 encoding and en_US as default encoding/language
set encoding=utf8

" Define standard filetype
set ffs=unix,dos,mac

colorscheme apprentice
set background=dark

let &t_SI = "\<Esc>[4 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[6 q"
" set cursorline	" highlight current active line

"""""""""""""""""""""""""""""""""""""""""""""""""
" File Types
"""""""""""""""""""""""""""""""""""""""""""""""""
" recognize .md files as markdown files
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" enable spell-checking for markdown files
autocmd BufRead,BufNewFile *.md setlocal spell

"""""""""""""""""""""""""""""""""""""""""""""""""
" Text and Indentation
"""""""""""""""""""""""""""""""""""""""""""""""""
" Use smart tabs
set smarttab

set expandtab " use spaces, no tabs

" 1 tab == 4 spaces
set shiftwidth=4
set softtabstop=4

set ai " Auto indent
set si " Smart indent

" modern backspace behavior
set backspace=indent,eol,start

filetype indent on	" enable filetype specific indentation

"""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
"""""""""""""""""""""""""""""""""""""""""""""""""
" move vertically by visual line (don't skip wrapped lines) 
nnoremap j gj
nnoremap k gk

"""""""""""""""""""""""""""""""""""""""""""""""""
" vim-flake8
"""""""""""""""""""""""""""""""""""""""""""""""""
" added ~/.local/bin/flake8 to path
" let g:flake8_cmd='/home/uic16913/.local/bin/flake8'
" autocmd BufWritePost *.py call flake8#Flake8()

"""""""""""""""""""""""""""""""""""""""""""""""""
" ultisnips
"""""""""""""""""""""""""""""""""""""""""""""""""
" Trigger configuration. You need to change this to something other than <tab>
" if you use one of the following:
" " - https://github.com/Valloric/YouCompleteMe
" " - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<c-x>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"""""""""""""""""""""""""""""""""""""""""""""""""
" vim-ale
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

"""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>jd :YcmCompleter GoTo<CR>
let g:ycm_server_python_interpreter = '/usr/bin/python3.8'
" let g:ycm_clangd_binary_path = "~/Downloads/software/clang+llvm-9.0.0-x86_64-linux-gnu-ubuntu-16.04/bin/clangd"

"""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl-p
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files=0


"""""""""""""""""""""""""""""""""""""""""""""""""
" minibufexpl
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

"""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""
" show hidden files
let NERDTreeShowHidden=1

" open/close NERDTree using Leader-f (,-f)
nnoremap <Leader>f :NERDTreeToggle<Enter>
