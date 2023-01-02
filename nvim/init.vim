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
set termguicolors
set background=dark
set runtimepath+=~/.vim-plugins/LanguageClient-neovim

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
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'icymind/NeoSolarized'
Plug 'tpope/vim-fugitive'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'liquid']  }
Plug 'mattn/emmet-vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'rbong/vim-flog'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-rhubarb'
Plug 'justinmk/vim-sneak'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'Yggdroot/indentLine'
Plug 'posva/vim-vue'
" Plug 'leafgarland/typescript-vim'
Plug 'jparise/vim-graphql'
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'tpope/vim-liquid'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'arcticicestudio/nord-vim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
Plug 'tpope/vim-rails'
Plug 'neovim/nvim-lspconfig'
Plug 'deoplete-plugins/deoplete-lsp'
" Plug 'ryanoasis/vim-devicons'

call plug#end()


let mapleader = "\<Space>"

" Colorscheme
colorscheme NeoSolarized

" Syntax Highligh For EJS
au BufNewFile,BufRead *.ejs set filetype=html

" Copy to clipboard
map <Leader>y "+y

" Nohighlight
map <Leader>h :nohlsearch<Enter>

" Paste from register
map <Leader>p "0p

" Netrw Customizations
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25

" NERDTree Customizations
let NERDTreeShowHidden=1
nmap <Leader>w :NERDTreeFind<Enter>
nmap <Leader>ww :NERDTreeClose<Enter>

" ltoggle
nmap <Leader>l :lopen<Enter>
nmap <Leader>ll :lclose<Enter>

" Commentry
nnoremap <Leader>c gcc

" Autocomplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#lsp#handler_enabled = v:true

" Quick search
nmap <Leader>f :Buffers<Enter>
nmap <Leader>g :GFiles<Enter>
nmap <Leader>t :Files<Enter>

" Deoplete use tab for forward / backward
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

" Ale supported linters
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

let g:ale_linter_aliases = {
\   'liquid': ['html'],
\}

let g:ale_linters = {
\   'liquid': ['htmlhint'],
\}

let g:ale_linters = {
\   'ruby': ['rubocop'],
\}

" Ultisnips
let g:UltiSnipsExpandTrigger = "<c-e>"
" let g:UltiSnipsSnippetsDir="/Users/...."

" Neosnippets Mappings
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
let g:neosnippet#snippets_directory='~/Personal/vin-snippets'

" Indentline
let g:indentLine_enabled = 1

" FORMATTERS
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css

" Prettier autosave on write
let g:prettier#autoformat = 0
let g:prettier#autoformat_require_pragma = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html,*.liquid PrettierAsync

" LSP
let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ }
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

if has('nvim')
  tnoremap <a-a> <esc>a
  tnoremap <a-b> <esc>b
  tnoremap <a-d> <esc>d
  tnoremap <a-f> <esc>f
endif

" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" auto-format
" autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)

lua << EOF
  require'lspconfig'.tsserver.setup{}
  require'lspconfig'.solargraph.setup{}
  require'lspconfig'.graphql.setup{}
  require'lspconfig'.phpactor.setup{}
EOF
