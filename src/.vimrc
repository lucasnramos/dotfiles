" List of plugins
call plug#begin()
"Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree' 
Plug 'Yggdroot/indentLine'
" Themes
Plug 'dracula/vim'
Plug 'gruvbox-community/gruvbox'
Plug 'tomasiser/vim-code-dark'
call plug#end()


" Theme
set background=dark
colo dracula
" Initial sets
syntax on
set nocompatible
set noerrorbells
set t_vb=                            " Disable all visual blink or bell
set hidden                           " Opening a new file on current buffer, hides the previous one instead of closing (keep changes)
set wildmenu                         " Improved completion on command line mode
set smartcase                        " case insensitive search, unless Case is used
set ignorecase
set autoindent                       " indent when creating new lines
set confirm                          " confirm closing files / buffers with unsaved changes
set mouse=a                          " Enable mouse support on different modes, 'a' for all modes
set cmdheight=2                      " Number of lines allocated for the command line
set number                           " display line number
set relativenumber                   " Display relative line numbers
set notimeout ttimeout ttimeoutlen=0 " time to wait when using chord commands
set shiftwidth=2                     " Jump two spaces when shift + >
set softtabstop=2                    " Tabs - 2 width
set expandtab                        " tabs to spaces
set clipboard+=unnamedplus           " Neovim only - use system clipboard (depends on xclip or xsel)
set splitbelow splitright            " Split to right and down instead of left and up
set cursorline                       " Line highlight
set noswapfile
set termguicolors                    " Full color support
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
set scrolloff=10
set signcolumn=yes
set t_u7= " Workaround some :2R appearing in vim startup
filetype indent plugin on

" Autocmds
autocmd InsertEnter * norm zz
autocmd BufWritePost $MYVIMRC so $MYVIMRC

"==================================================
" Custom keybindings
"==================================================
:let mapleader=" "
:nmap ç :
:nnoremap ; :
nnoremap <leader>rco :tabnew $MYVIMRC<CR>
nnoremap <leader>rcr :so $MYVIMRC<CR>
vnoremap > >gv
vnoremap < <gv

" Auto close brackets in insert mode
inoremap "" ""<left>
inoremap '' ''<left>
inoremap (( ()<left>
inoremap [[ []<left>
inoremap {{ {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap [<CR> [<CR>]<ESC>O
inoremap [;<CR> [<CR>];<ESC>O

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
noremap <C-b> :NERDTreeToggle<CR>
nnoremap <leader>nr :NERDTreeRefreshRoot<CR>

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
vnoremap <leader>f  <Plug>(coc-format-selected)
nnoremap <leader>f  <Plug>(coc-format-selected)

" Vim plug
nnoremap <leader>pi :PlugInstall<CR>

" fugitive
nnoremap <leader>gg :Git<space>
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gpp :Git push<CR>
nnoremap <leader>gpu :Git push -u origin<space>
nnoremap <leader>gpl :Git pull<space>
nnoremap <leader>gft :Git fetch --all<CR>
nnoremap <leader>gco :Git checkout


"==================================================
" Everything down here is Unformatted mess
"==================================================
