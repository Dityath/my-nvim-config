" init.vim

syntax enable

set number
set relativenumber

set tabstop=2
set shiftwidth=2
set expandtab

set smartindent
set hlsearch

set ignorecase
set smartcase

set mouse=a

set clipboard+=unnamedplus

filetype plugin indent on

" minimap

" let g:minimap_width = 10
" let g:minimap_auto_start = 1
" let g:minimap_auto_start_win_enter = 1

" nerdtree config

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd VimEnter * NERDTree | wincmd p

autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif " Close the tab if NERDTree is the only window remaining in it.

" terminal config

" noremap <C-w>e :terminal<CR>
tnoremap <Esc> <C-\><C-n>
" command! -nargs=* <C-w>e vsplit | resize 20 | terminal <args>
noremap <C-w>e :$tabnew <bar> terminal<CR>

" autocmd VimEnter * terminal | wincmd d

" tab and stuffs

noremap <C-w>1 :-tabnext<CR>
noremap <C-w>2 :+tabnext<CR>
noremap <C-w>3 :$tabnew<CR>

" airlines setup

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#formatter = 'unique_tail' " file-name.js

let g:airline#extensions#clock#auto = 0

" prettier

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" require("lsp-format").setup {}
" require("lspconfig").gopls.setup { on_attach = require("lsp-format").on_attach }

" vue

let g:vim_vue_plugin_config.foldexpr = 0
let g:vim_vue_plugin_config = { 'syntax': { 'template': ['html', 'pug'], 'script': ['javascript', 'typescript', 'coffee'], 'style': ['css', 'scss', 'sass', 'less', 'stylus'], 'i18n': ['json', 'yaml'], 'route': 'json' }, 'full_syntax': ['json'], 'initial_indent': ['i18n', 'i18n.json', 'yaml'], 'attribute': 1, 'keyword': 1, 'foldexpr': 1, 'debug': 0 }

" Specify the plugin directory

call plug#begin('~/.vim/plugged')

" wakatime

Plug 'wakatime/vim-wakatime'

" Scrolling

Plug 'petertriho/nvim-scrollbar'
Plug 'yuttie/comfortable-motion.vim'

" Lua

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'

" cheatsheet

Plug 'sudormrfbin/cheatsheet.nvim'

" status/tabline

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'

" sneak

Plug 'justinmk/vim-sneak'

" indent line

Plug 'yggdroot/indentline'

" Coc nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" nerdtree

Plug 'preservim/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

" vim commentary

Plug 'tpope/vim-commentary'

" ale

Plug 'dense-analysis/ale'

" fugitive

Plug 'tpope/vim-fugitive'

" tagalong

Plug 'AndrewRadev/tagalong.vim'

" emmet

Plug 'mattn/emmet-vim'

" vim surround

Plug 'tpope/vim-surround'

" syntastic

Plug 'scrooloose/syntastic'

" git gutter

Plug 'airblade/vim-gitgutter'

" completion

" Plug 'valloric/youcompleteme'

" prettier

Plug 'prettier/vim-prettier'

" autoformat

Plug 'vim-autoformat/vim-autoformat'
Plug 'lukas-reineke/lsp-format.nvim'

" minimap

" Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}

" Javascript plugins

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'

" jsx syntax highlighting

Plug 'maxmellon/vim-jsx-pretty'
Plug 'mxw/vim-jsx'

" vue

Plug 'leafOfTree/vim-vue-plugin'

" css

Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'

" html language

Plug 'rstacruz/sparkup'

" markdown

Plug 'preservim/vim-markdown'

call plug#end()
