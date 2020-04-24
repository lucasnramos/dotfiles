" Autoloads vim-plug if is not installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" List of plugins
call plug#begin()
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'leafgarland/typescript-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'sheerun/vim-polyglot'
call plug#end()

" Initial sets
"colorscheme nord
set nocompatible
syntax on
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
set clipboard+=unnamedplus
set splitbelow splitright
filetype indent plugin on
au BufNewFile,BufRead /*.rasi setf css

" Custom keybidings
:nmap ç :
:nmap ; :
map <C-b> :NERDTreeToggle<CR>
map <leader>y "+y
map <leader>p "+p
map <C-y> "*y
map <C-p> "*p
nnoremap <leader>c :e $MYVIMRC<CR>
nnoremap <leader>r :so $MYVIMRC<CR>

" Splits
" Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Resize
noremap <silent> <C-Left> :vertical resize +5<CR>
noremap <silent> <C-Right> :vertical resize -5<CR>
noremap <silent> <C-Up> :resize +5<CR>
noremap <silent> <C-Down> :resize -5<CR>

" NERDTree
let g:NERDTreeShowHidden=1

" COC
let g:coc_node_path = '/home/lucas/.nvm/versions/node/v12.16.2/bin/node'
