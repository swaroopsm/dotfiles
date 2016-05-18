set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Bundles
Plugin 'gmarik/Vundle.vim'
Bundle 'Lokaltog/vim-easymotion'
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
Bundle 'scrooloose/nerdtree'
" Bundle 'flazz/vim-colorschemes'
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Bundle 'Valloric/YouCompleteMe'
Bundle 'xolox/vim-notes'
Bundle 'xolox/vim-misc'
Bundle 'tpope/vim-eunuch'
Plugin 'pangloss/vim-javascript'
Plugin 'thoughtbot/vim-rspec'
Plugin 'scrooloose/syntastic'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'groenewege/vim-less'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'gregsexton/gitv'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mxw/vim-jsx'

call vundle#end()

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
set wildignore=*.swp,*.bak,*.pyc,*.class
set nobackup
set noswapfile
set nowritebackup
set expandtab
set laststatus=2
set colorcolumn=80

filetype plugin indent on

syntax enable

set background=dark
colorscheme pablo 

if &t_Co >= 256 || has("gui_running")
   set background=dark
   set guifont=Monospace\ 14
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

" NERDTree shortcuts
let NERDTreeShowHidden=1

" Notes Plugin
let g:notes_directories = ['~/Notes']
let g:notes_suffix = '.md'

" Syntax checkers, powered by Syntastic
let g:syntastic_javascript_checkers = ['jslint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 3

" Calendar Plugin
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" Auto-load buffer when changed elsewhere
set autoread

" NERDTree with leader keys
let mapleader = "\<Space>"
nmap <Leader>w :NERDTreeFind<Enter>
nmap <Leader>ww :NERDTreeClose<Enter>
nmap <Leader>c :TComment<Enter>
vmap <Leader>c :TComment<Enter>
vmap <Leader>y "+y"
map <Leader>p "+gp"

" vim-ariline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'wombat'
let g:airline_powerline_fonts = 1

" Window navigation keys
nnoremap <Leader><Left> <C-w><Left>
nnoremap <Leader><Right> <C-w><Right>

" Buffer  navigation keys
noremap <Leader><Leader><Right> gt
noremap <Leader><Leader><Left> gT

" Autoload for erb files
au FileType eruby nnoremap <Leader>ss i <%=  %><Esc>2hi

" Nohighlight
map <Leader>h :nohlsearch<Enter>
