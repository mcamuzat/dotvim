" Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!
 
NeoBundle 'fatih/vim-go'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'shougo/unite.vim'
NeoBundle 'altercation/vim-colors-solarized'

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

" colors
set t_Co=256
set background=dark
"colorscheme solarized

" Mouse
set mouse=a
set mousehide

" Number 
set number

" better search
set incsearch
set smartcase
set laststatus=2
set showmatch 

" php 
let php_sql_query =1
let php_Baselib=1
let php_htmlInStrings=1

" commandline mode
set wildmenu
" Insert mode completion options
set completeopt=menu,longest,preview

let mapleader = ","
" Shortcut to rapidly toggle `set list`
nmap <leader>f :NERDTreeToggle<CR>
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
