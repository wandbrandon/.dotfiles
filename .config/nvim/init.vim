call plug#begin('~/.config/nvim/plugs')

"completion/hinting
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'pangloss/vim-javascript'
"workhelp
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
"visualhelp
Plug 'Yggdroot/indentLine'
Plug 'dylanaraps/wal.vim'
Plug 'NerdyPepper/vim-colors-plain'
Plug 'vim-python/python-syntax'
"bottombar
Plug 'itchyny/lightline.vim'

call plug#end()


"vim settings
set incsearch
set smartcase
set wrap
set autoindent
set smartindent
set smarttab
set expandtab
set shiftwidth=4
set tabstop=4
set clipboard+=unnamedplus
set title
set number
set completeopt-=preview
set mouse=a
set noshowmode
set signcolumn=yes

"javascript highlight
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

"python highlight
let g:python_highlight_all = 1

"indentation lines plugin
let g:indentLine_char = '¦'
let g:indentLine_color_term = 8

"wal colorscheme
colorscheme wal

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
      \ 'colorscheme': 'wal',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction'
      \ },
      \ }
