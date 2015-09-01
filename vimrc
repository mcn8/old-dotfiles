set nocompatible
filetype off

syntax on
set showmatch
set number

source ~/.vim/vundleConfig.vim

" neocomplete
let g:neocomplete#enable_at_startup = 1

" ultisnips
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

colorscheme molokai
