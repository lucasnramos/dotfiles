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
filetype indent plugin on
:nmap ç :
:nmap ; :
au BufNewFile,BufRead /*.rasi setf css
