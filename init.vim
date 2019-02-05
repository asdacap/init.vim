
call plug#begin('~/.config/nvim/plugged')
Plug 'drewtempelmeyer/palenight.vim'
Plug 'cloudhead/neovim-fuzzy'
Plug 'yuttie/comfortable-motion.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'lifepillar/vim-solarized8'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'tpope/vim-vinegar'
call plug#end()

" Themes
set background=dark
colorscheme solarized8

" Other config
set scrolloff=5
set relativenumber
set path+=**
set wildmenu

" Fuzzy also need other things to be installed
nnoremap <C-p> :FuzzyOpen<CR>

let g:deoplete#enable_at_startup = 1
" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:fuzzy_rootcmds = []
