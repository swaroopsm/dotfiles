set nocompatible
filetype off

set encoding=utf-8
set hidden
set nowrap        " don't wrap lines
set tabstop=2     " a tab is four spaces
set backspace=indent,eol,start
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
			            "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class,**/node_modules,**/build,**/coverage,**/dist
set nobackup
set noswapfile
set nowritebackup
set expandtab
set laststatus=2
set colorcolumn=80
set cursorline
set lazyredraw
set synmaxcol=128
set pastetoggle=<F2>
set mouse=a
set wrap
set linebreak
set nolist  " list disables linebreak
set statusline+=%#warningmsg#
set statusline+=%*
set autoread
" set termguicolors

filetype plugin indent on
syntax enable

" auto-install vim-plug                                                                                                                
if empty(glob('~/.config/nvim/autoload/plug.vim'))                                                                                    
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
" Plug 'SirVer/ultisnips'  
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

let mapleader = "\<Space>"

" Syntax Highligh For EJS
au BufNewFile,BufRead *.ejs set filetype=html

" Nohighlight
map <Leader>h :nohlsearch<Enter>

" Netrw Customizations
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25

" NERDTree Customizations
let NERDTreeShowHidden=1
nmap <Leader>w :NERDTreeFind<Enter>
nmap <Leader>ww :NERDTreeClose<Enter>

" Commentry
nnoremap <Leader>c gcc

" Autocomplete
let g:deoplete#enable_at_startup = 1

" Quick search
nmap <Leader>f :GFiles<Enter>

" Deoplete use tab for forward / backward
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
