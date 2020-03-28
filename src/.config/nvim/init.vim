" Test vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'leafgarland/typescript-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'arcticicestudio/nord-vim'
call plug#end()

" Initial sets
" colorscheme nord
set nocompatible
syntax on
set path+=** " fuzzy finder
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse=a
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set shiftwidth=4
set softtabstop=4
set expandtab
set relativenumber
set timeoutlen=10
set ttimeoutlen=1
filetype indent plugin on
au BufNewFile,BufRead /*.rasi setf css

" Custom keybidings
:nmap ç :
:nmap ; :
map <C-b> :NERDTreeToggle<CR>

" NERDTree
let g:NERDTreeShowHidden=1

" CtrlP
