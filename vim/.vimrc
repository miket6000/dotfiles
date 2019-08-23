runtime! debian.vim
syntax enable

" speed up the escape key response
set ttimeoutlen=10

" enable pretty colours
set background=dark
set t_Co=256
set guifont=Liberation\ Mono\ for\ Powerline\ 10 
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" enable indent plugin
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
" set mouse=a		" Enable mouse usage (all modes)
set number		" add line numbers

" Fix indentation in c/c++
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Tell vim to search from the current directory upwards for ctag files
set tags+=tags;/

" Add Arduino libraries and current folder to search path...
set path+=~/Arduino/libraries/**,**
