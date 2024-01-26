call plug#begin()
Plug 'kana/vim-operator-user'
Plug 'rhysd/vim-clang-format'

Plug 'prabirshrestha/asyncomplete.vim', { 'for': ['c', 'python', 'bash', 'html'] }
Plug 'prabirshrestha/asyncomplete-lsp.vim', { 'for': ['c', 'python', 'bash', 'html'] }
Plug 'prabirshrestha/vim-lsp', { 'for': ['c', 'python', 'bash', 'html'] }
Plug 'mattn/vim-lsp-settings', { 'for': ['c', 'python', 'bash', 'html'] }
Plug 'mattn/vim-lsp-icons', { 'for': ['c', 'python', 'bash', 'html'] }

Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
call plug#end()

autocmd FileType c ClangFormatAutoEnable


inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

set completeopt=menuone,noinsert,noselect,preview
let g:asyncomplete_popup_delay = 200
let g:lsp_text_edit_enabled = 0
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

set number

set belloff=all

set termguicolors
set t_Co=256
syntax on

colorscheme gruvbox
set background=dark

function! Clock()
    return strftime("%H:%M")
endfunction

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'clock' ],
      \              [ 'gitbranch' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'clock': 'Clock',
      \ },
      \}


set hlsearch
set incsearch

set noerrorbells

set ambiwidth=double

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

set wildmenu

set showcmd

set cursorline

set laststatus=2

