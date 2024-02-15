set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set ttyfast                 " Speed up scrolling in Vim
set spell                   " enable spell check (may need to download language package)
set noswapfile              " disable creating swap file
set backupdir=~/.cache/vim  " Directory to store backup files.
set termguicolors           " needed for Catpuccin theme



call plug#begin()
 "Plug 'dracula/vim'
 Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
 Plug 'terryma/vim-multiple-cursors'
 "Plug 'https://github.com/morhetz/gruvbox'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'

 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'https://github.com/vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'

 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'https://github.com/elkowar/yuck.vim.git'
call plug#end()

"catpuccin theme
let g:catppuccin_flavour = "frappe" " latte, frappe, macchiato, mocha
lua << EOF
require("catppuccin").setup()
EOF
colorscheme catppuccin

" Vim Airline
let g:airline_theme = 'catppuccin'

" VimTree keybind
map <C-o> :NERDTreeToggle<CR>

" Nerdcommenter keybind to CTRL /
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv


"
" 
"
"
" Gruvbox theme
"set background=dark 
"colorscheme gruvbox
"let g:gruvbox_transparent_bg=1
"let g:gruvbox_contrast_dark='soft'
"let g:gruvbox_contrast_light='soft'
"
" let g:airline_theme='gruvbox'

