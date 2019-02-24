
call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rsi'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'yuttie/comfortable-motion.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}

Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'lifepillar/vim-solarized8'
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
nnoremap <C-p> :Files<CR>

let g:deoplete#enable_at_startup = 1
" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:fuzzy_rootcmds = []

"""""""""""""""""""""
"""" COMPETE STUFF

map <S-F2> :!g++ -std=c++11 % -o %:r.out<CR>
map <F2> :!g++ -std=c++11 -DDEBUG -Wfatal-errors % -o %:r.out<CR>

map <F3> :!./%:r.out < %:p:h/input<CR>
map <S-F3> :!./%:r.out < %:p:h/input \| diff %:p:h/answer - <CR>

map <F4> :!javac -Xlint:unchecked %<CR>
map <S-F4> :!java -classpath %:p:h Main < %:p:h/input<CR>

map <F5> :!stack runghc % < %:p:h/input <CR>
map <S-F5> :!stack ghc % -o %:r.out <CR>

