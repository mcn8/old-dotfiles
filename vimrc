set nocompatible
filetype off

syntax on
set showmatch
set number
set history=1000
set undolevels=1000
set title

source ~/.vim/vundleConfig.vim

" neocomplete
let g:neocomplete#enable_at_startup = 1

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

colorscheme molokai

set backspace=indent,eol,start " backspace over everything in insert mode

nmap <F8> :TagbarToggle<CR>
