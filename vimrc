syntax on
set number
set tabstop=9 softtabstop=0 expandtab shiftwidth=4 smarttab autoindent cindent
"set nocompatible ruler laststatus=2 showcmd showmode number

"""""""""""""""""""""""""""""""
""""""" VUNDLE 
"""""""""""""""""""""""""""""""
set nocompatible
filetype off

" Vundle configs
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on


"""""""""""""""""""""""""""""""
"""""" THEME
"""""""""""""""""""""""""""""""
set background=dark
"colorscheme solarized 


"""""""""""""""""""""""""""""""
""""" KEYMAP
"""""""""""""""""""""""""""""""

" Key remap for DV homerow
nnoremap l s
nnoremap s l
nnoremap L S
nnoremap S L
"nnoremap <C-s> <C-l>
"nnoremap <C-l> <C-s>

nnoremap k t
nnoremap t k
nnoremap K T
nnoremap T K
"nnoremap <C-t> <C-j>
"nnoremap <C-j> <C-t>

nnoremap j n
nnoremap n j
nnoremap J N
nnoremap N J
"nnoremap <C-n> <C-k>
"nnoremap <C-k> <C-n>

" Page up/down
nnoremap <C-f> <C-b>
nnoremap <C-b> <C-f>

"""""""""""""""""""""""""""""""""
"""""" STATUSLINE
"""""""""""""""""""""""""""""""""
set laststatus=2
set noshowmode

if !has('gui_running')
    set t_Co=256
endif

let g:lightline = {
    \ 'colorscheme' : 'wombat',
    \ 'active': {
    \    'left' : [ [ 'mode', 'paste' ],
    \             ['gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \    'gitbranch': 'fugitive#head'
    \ },
    \}
