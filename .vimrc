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
Bundle 'junegunn/vim-easy-align'
Bundle 'tpope/vim-endwise'
Bundle 'airblade/vim-gitgutter'
Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Bundle 'vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
Bundle 'xolox/vim-notes'
Bundle 'xolox/vim-misc'
Bundle 'tpope/vim-eunuch'
Plugin 'pangloss/vim-javascript'
Plugin 'thoughtbot/vim-rspec'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'groenewege/vim-less'
Plugin 'gregsexton/gitv'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'mxw/vim-jsx'
Plugin 'imcatnoone/toothpaste'
Plugin 'luochen1990/rainbow'
Bundle "daylerees/colour-schemes", { "rtp": "vim/"  }
Bundle "joshdick/onedark.vim"
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'Yggdroot/indentLine'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'majutsushi/tagbar'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Bundle 'matze/vim-move'
Plugin 'w0rp/ale'
Plugin 'prettier/vim-prettier'
Plugin 'ternjs/tern_for_vim'
Plugin 'tpope/vim-rhubarb'

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
set wildignore=*.swp,*.bak,*.pyc,*.class,**/node_modules,**/build,**/coverage,**/dist
set nobackup
set noswapfile
set nowritebackup
set expandtab
set laststatus=2
set colorcolumn=80
set cursorline
set relativenumber
set lazyredraw
set synmaxcol=128

filetype plugin indent on

syntax enable

set background=dark
colorscheme solarized 

if &t_Co >= 256 || has("gui_running")
  set background=dark
  set guifont=Monospace\ 6
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
map <C-S-Tab> tg

" NERDTree shortcuts
let NERDTreeShowHidden=1

" Notes Plugin
let g:notes_directories = ['~/Notes']
let g:notes_suffix = '.md'

set statusline+=%#warningmsg#
set statusline+=%*

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
nnoremap <Leader>h <C-w><Left>
nnoremap <Leader>l <C-w><Right>
nnoremap <Leader>< <C-w><Left>
nnoremap <Leader>> <C-w><Right>

" Buffer  navigation keys
noremap <Leader><Leader><Right> gt
noremap <Leader><Leader><Left> gT

" Autoload for erb files
au FileType eruby nnoremap <Leader>ss i <%=  %><Esc>2hi

" Nohighlight
map <Leader>h :nohlsearch<Enter>

" Activate Rainbow
let g:rainbow_active = 1

" JSX
" let g:jsx_ext_required = 0

" Concealing
let g:javascript_conceal_arrow_function       = "⇒"

" Learn VIM the hard way! :/
" nnoremap <Up> <Nop>
" nnoremap <Down> <Nop>
" nnoremap <Left> <Nop>
" nnoremap <Right> <Nop>

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-x>"

" IndentLine
let g:indentLine_faster = 1
let g:indentLine_enabled = 0

let g:solarized_termcolors=256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termtrans = 1
