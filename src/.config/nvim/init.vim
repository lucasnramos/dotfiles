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
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'cloudhead/neovim-fuzzy'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim'
call plug#end()

" Initial sets
set nocompatible
syntax on
set noerrorbells
set hidden                           " Opening a new file on current buffer, hides the previous one instead of closing (keep changes)
set wildmenu                         " Improved completion on command line mode
set smartcase                        " case insensitive search, unless Case is used
set ignorecase
set autoindent                       " indent when creating new lines
set ruler                            " Show cursor position (line and number)
set confirm                          " confirm closing files / buffers with unsaved changes
set visualbell                       " visual feedback instead of beep sound
set mouse=a                          " Enable mouse support on different modes, 'a' for all modes
set cmdheight=2                      " Number of lines allocated for the command line
set number                           " display line number
set relativenumber                   " Display relative line numbers 
set notimeout ttimeout ttimeoutlen=0 " time to wait when using chord commands
set pastetoggle=<F11>                " Keybind for paste toggle
set shiftwidth=2                     " Jump two spaces when shift + >
set softtabstop=2                    " Tabs - 2 width
set expandtab                        " tabs to spaces
set clipboard+=unnamedplus           " Neovim only - use system clipboard (depends on xclip or xsel)
set splitbelow splitright            " Split to right and down instead of left and up
set cursorline                       " Line highlight
set cursorcolumn                     " Column highlight
set noswapfile
filetype indent plugin on
colo dracula

" Autocmds
autocmd InsertEnter * norm zz

" Custom keybidings
:let mapleader=" "
:nmap ç :
:noremap <C-m> ;
:nnoremap ; :
nnoremap <leader>c :tabnew $MYVIMRC<CR>
nnoremap <leader>r :so $MYVIMRC<CR>

" Auto close brackets in insert mode
inoremap \"" \""<left>
inoremap '' ''<left>
inoremap (( ()<left>
inoremap [[ []<left>
inoremap {{ {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

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

" fzy
" nnoremap <C-p> :FuzzyOpen<CR>
nnoremap <leader>fg :FuzzyGrep<CR>
nnoremap <leader>fo :FuzzyOpen<CR>

" NERDTree
let g:NERDTreeShowHidden=1
noremap <C-b> :NERDTreeToggle<CR>
nnoremap <leader>nr :NERDTreeRefreshRoot<CR>

"" COC Config
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" fugitive
nnoremap <leader>g :G

" Vim plug
nnoremap <leader>pi :PlugInstall<CR>
