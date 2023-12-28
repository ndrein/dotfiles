"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Clone Vundle if necessary
if !isdirectory(expand("~/.vim/bundle/Vundle.vim"))
    !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Plugins
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    Plugin '907th/vim-auto-save'
    let g:auto_save = 1  " enable AutoSave on Vim startup

    Plugin 'airblade/vim-gitgutter'

    " Comment/uncomment with gcc / gc (with selection)
    Plugin 'tomtom/tcomment_vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show existing tab with 2 spaces width
set tabstop=2

" When indenting with '>', use 2 spaces width
set shiftwidth=2

" On pressing tab, insert 2 spaces
set expandtab

" Delete inserted 2 spaces with one keystroke
set softtabstop=2

" Don't create swapfiles
set noswapfile
 
" Turn syntax highlighting on
syntax on
