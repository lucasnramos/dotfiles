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
Plug 'sheerun/vim-polyglot'
Plug 'cloudhead/neovim-fuzzy'
Plug 'mattn/emmet-vim'
call plug#end()

" Initial sets
set nocompatible
syntax on
set hidden                              " Opening a new file on current buffer, hides the previous one instead of closing (keep changes)
set wildmenu                            " Improved completion on command line mode
set smartcase                           " case insensitive search, unless Case is used
set autoindent                          " indent when creating new lines
set ruler                               " Show cursor position (line and number)
set confirm                             " confirm closing files / buffers with unsaved changes
set visualbell                          " visual feedback instead of beep sound
set mouse=a                             " Enable mouse support on different modes, 'a' for all modes
set cmdheight=2                         " Number of lines allocated for the command line
set number                              " display line number
set relativenumber                      " Display relative line numbers 
set notimeout ttimeout ttimeoutlen=0    " time to wait when using chord commands
set pastetoggle=<F11>                   " Keybind for paste toggle
set shiftwidth=2
set softtabstop=2
set expandtab
set clipboard+=unnamedplus
set splitbelow splitright               " Split to right and down instead of left and up
filetype indent plugin on

" Custom keybidings
:nmap ç :
:nmap ; :
map <C-b> :NERDTreeToggle<CR>
map <leader>y "+y
map <leader>p "+p
map <C-y> "*y
map <C-p> "*p

nnoremap <leader>c :tabnew $MYVIMRC<CR>
nnoremap <leader>r :so $MYVIMRC<CR>

" Auto close brackets in insert mode
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
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
nnoremap <C-p> :FuzzyOpen<CR>

" NERDTree
let g:NERDTreeShowHidden=1

" COC

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <C-Space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)



