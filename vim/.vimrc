call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Themes
Plug 'dracula/vim'
Plug 'gruvbox-community/gruvbox'
Plug 'tomasiser/vim-code-dark'
Plug 'joshdick/onedark.vim'
Plug 'lifepillar/vim-solarized8'

call plug#end()

set background=dark
colo desert

" Initial sets
syntax on
filetype indent plugin on
set nocompatible
set noerrorbells
set t_vb=                            " Disable all visual blink or bell
set hidden                           " Opening a new file on current buffer, hides the previous one instead of closing (keep changes)
set wildmenu                         " Improved completion on command line mode
set smartcase                        " case insensitive search, unless Case is used
set ignorecase
set confirm                          " confirm closing files / buffers with unsaved changes
set visualbell                       " visual feedback instead of beep sound
set mouse=a                          " Enable mouse support on different modes, 'a' for all modes
set cmdheight=2                      " Number of lines allocated for the command line
set number                           " display line number
set relativenumber                   " Display relative line numbers
set notimeout ttimeout ttimeoutlen=400 " time to wait when using chord commands
set pastetoggle=<F11>                " Keybind for paste toggle
set shiftwidth=2                     " Jump two spaces when shift + >
set softtabstop=2                    " Tabs - 2 width
set expandtab                        " tabs to spaces
set splitbelow splitright            " Split to right and down instead of left and up
set cursorline                       " Line highlight
set colorcolumn=80                   " Show colored column at X
set noswapfile
" set termguicolors                    " Full color support
set scrolloff=8
set nohlsearch                       " Disables search highlight
set nowrap                           " Disable word wrapping
set encoding=utf-8
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
set incsearch

" Autocmds
autocmd InsertEnter * norm zz
autocmd BufWritePost $MYVIMRC so $MYVIMRC

" ====================
" Custom keybidings
" ====================
:let mapleader=" "
:nmap ç :
:nnoremap ; :
:vmap ç :
:vnoremap ; :
nnoremap <leader>rco :tabnew $MYVIMRC<CR>
nnoremap <leader>rcr :so $MYVIMRC<CR>
nnoremap <leader>grco :tabnew ~\AppData\Local\nvim\ginit.vim<CR>
nnoremap <leader>grcr :so $MYVIMRC<CR>
vnoremap > >gv
vnoremap < <gv
nnoremap <leader>y "*y
nnoremap <leader>Y "*Y
vnoremap <leader>y "*y
vnoremap <leader>Y "*Y
inoremap <S-Insert> <C-R>*
nnoremap <leader>ex :Ex<CR>
nnoremap <leader>sex :Sex<CR>

" Auto close brackets in insert mode
" inoremap "" ""<left>
" inoremap '' ''<left>
" inoremap (( ()<left>
" inoremap [[ []<left>
" inoremap {{ {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O

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

" Buffers
nnoremap <leader>bda :bufdo bd

" Project navigation
nnoremap <leader>PHN :cd ~\\Projects\\phoenix-spa\\src\\app<CR>
nnoremap <leader>Notes :cd ~\\Projects\\notes<CR>

" nvim-terminal
:tnoremap <Esc> <C-\><C-n>
nnoremap <leader>pwr :tabnew term://powershell<CR>

" ====================
" Plugin keybidings
" ====================

" fugitive
nnoremap <leader>gg :Git<space>
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gpp :Git push<space>
nnoremap <leader>gpu :Git push -u origin<space>
nnoremap <leader>gpl :Git pull<space>
nnoremap <leader>gco :Git checkout<space>
nnoremap <leader>gft :Git fetch<CR>
