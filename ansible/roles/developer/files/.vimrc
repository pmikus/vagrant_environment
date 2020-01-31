set nocompatible
syntax enable
set nowrap
set encoding=utf8
set termencoding=utf-8

" Vundle plugin
" Disable file type for vundle
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'                   " let Vundle manage Vundle, required

" Git Support
Plugin 'kablamo/vim-git-log'
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Markdown / Writting
Plugin 'reedes/vim-pencil'
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
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
call vundle#end()                               " required
filetype plugin indent on                       " required

"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""

" Show linenumbers
"set number
set ruler
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif

" Set Proper Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=2

" Enable highlighting of the current line
set cursorline
" Highlight matching braces
set showmatch

" Theme and Styling
set background=dark
colorscheme gruvbox
if &term == "screen"
    set t_Co=256
endif
let base16colorspace=256  " Access colors present in 256 colorspace

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

let python_highlight_all=1

" Key mapping
map <F2> :NERDTreeToggle<CR>
map <F3> :Sexplore<CR>
map <F8> :TagbarToggle<CR>
map <C-c> "+y<CR>

" NetRW
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_browse_split = 4
let g:netrw_altv = 1
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

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

" Solarized
let g:solarized_termcolors= 256
let g:solarized_termtrans = 1
let g:solarized_degrade = 0
let g:solarized_bold = 1
let g:solarized_underline = 1
let g:solarized_italic = 1
let g:solarized_contrast = "high"
let g:solarized_visibility= "high"
