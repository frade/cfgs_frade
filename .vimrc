syntax enable
set nocompatible
set background=dark
colorscheme solarized
syntax on
set autoindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4   
set expandtab
set shiftwidth=4
filetype on
filetype plugin on
filetype indent on
set number
let python_highlight_all=1
set complete=""
set complete+=.
set complete+=k
set complete+=b
set complete+=t
function InsertTabWrapper() 
    let col = col('.') - 1 
    if !col || getline('.')[col - 1] !~ '\k' 
        return "\<tab>" 
    else 
        return "\<c-p>" 
    endif 
endfunction 

imap <tab> <c-r>=InsertTabWrapper()<cr>
set complete=""
set complete+=.
set complete+=k
set complete+=b
set complete+=t
