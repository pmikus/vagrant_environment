" General
set nocompatible
syntax enable
set nowrap
set encoding=utf8
set termencoding=utf-8
filetype off                  " required
source $VIMRUNTIME/mswin.vim
"behave mswine

" Vundle plugin
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'                   " let Vundle manage Vundle, required

" Git Support
Plugin 'kablamo/vim-git-log'
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Markdown / Writting
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'

" Language support
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'mfukar/robotframework-vim'

" Utility
Plugin 'yggdroot/indentline'
Plugin 'wincent/command-t'
Plugin 'osyo-manga/vim-over'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

" Theme / Interface
Plugin 'vim-airline/vim-airline'
Plugin 'ryanoasis/vim-devicons'
Plugin 'arcticicestudio/nord-vim'
Plugin 'morhetz/gruvbox'

call vundle#end()                               " required
filetype plugin indent on                       " required

"set number
set ruler
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
" Always display the status line
set laststatus=2
set cursorline
set showmatch
set syntax=sh
"set autoindent
set hlsearch
set mouse=a
set nowritebackup
set nobackup
set noswapfile
set foldmethod=indent
set foldlevel=10
set foldlevelstart=20
set foldnestmax=2
set clipboard=unnamedplus

" Key mapping
map <F2> :NERDTreeToggle<CR>
map <F3> :Sexplore<CR>
map <F8> :TagbarToggle<CR>
map <C-c> "+y<CR>

" Autocmd
autocmd BufWritePre * %s/\s\+$//e

" Theme options
set guifont=UbuntuMono\ Nerd\ Font\ 11
set stal=2                  "tab bar always on
"set guioptions-=m          "remove menu bar
set guioptions-=T           "remove toolbar
set guioptions+=b
"set guioptions-=r          "remove right-hand scroll bar
"set guioptions-=L          "remove left-hand scroll bar
"set lines=999 columns=999   "max size
set background=dark
colorscheme gruvbox
if &term == "screen"
    set t_Co=256
endif

" Indent guides plugin
let g:indent_guides_start_level=4
let g:indent_guides_guide_size=4

" Nerdtree plugin
set autochdir
set hidden
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\\.pyc', '\\\~$', '\\.swo$', '\\.swp$', '\\.git', '\\.hg', '\\.svn', '\\.bzr']
let NERDTreeChDirMode=0
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let NERDTreeWinSize=62

" CTRLP plugin
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" AirLine plugin
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''
let g:airline#extensions#branch#format = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"let g:airline_symbols_ascii = 1
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
let g:airline_skip_empty_sections = 1
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
