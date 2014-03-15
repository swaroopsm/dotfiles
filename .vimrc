set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Plugins
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
Bundle 'kien/ctrlp.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/tComment'
Bundle 'mattn/emmet-vim'
Bundle 'justinmk/vim-gtfo'
Bundle 'jiangmiao/auto-pairs'
Bundle 'jlanzarotta/bufexplorer'
Bundle 'itchyny/calendar.vim'
Bundle 'vim-scripts/Conque-Shell'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'sjl/gundo.vim'
Bundle 'tmhedberg/matchit'
Bundle 'StanAngeloff/php.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'junegunn/vim-easy-align'
Bundle 'tpope/vim-endwise'
Bundle 'airblade/vim-gitgutter'
Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'Valloric/YouCompleteMe'
Bundle 'flazz/vim-colorschemes'
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

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
set wildignore=*.swp,*.bak,*.pyc,*.class
set nobackup
set noswapfile
set nowritebackup
set expandtab

filetype plugin indent on

syntax enable

set background=dark
colorscheme Tomorrow-Night 

if &t_Co >= 256 || has("gui_running")
   set background=dark
   set guifont=Monospace\ 11
else
    set background=dark
    set guifont=Monospace\ 11
endif
   
if &t_Co > 2 || has("gui_running")
  " switch syntax highlighting on, when the terminal has colors
  syntax on
endif

set pastetoggle=<F2>
set mouse=a

set wrap
set linebreak
set nolist  " list disables linebreak

map <silent> <Up> gk
imap <silent> <Up> <C-o>gk
map <silent> <Down> gj
imap <silent> <Down> <C-o>gj
map <silent> <home> g<home>
imap <silent> <home> <C-o>g<home>
map <silent> <End> g<End>
imap <silent> <End> <C-o>g<End>

autocmd FileType json set equalprg=json_reformat

" Syntax Highligh For EJS
au BufNewFile,BufRead *.ejs set filetype=html

" Fast Tab Switching
map <C-Tab> gt
map <C-S-Tab> gT

