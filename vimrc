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
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build': {
        \ 'mac': 'make -f make_mac.mak',
        \ 'unix': 'make -f make_unix.mak',
        \ 'cygwin': 'make -f make_cygwin.mak',
        \ 'windows': '"C:\Program Files (x86)\Microsoft Visual Studio 11.0\VC\bin\nmake.exe" make_msvc32.mak',
      \ },
    \ }
NeoBundle 'fatih/vim-go'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'shougo/unite.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'croaker/mustang-vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/unite-session'
NeoBundle 'junegunn/seoul256.vim'
NeoBundle 'brookhong/DBGPavim'
NeoBundle 'def-lkb/vimbufsync'
NeoBundle 'the-lambda-church/coquille'
 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

" colors
if &term =~ "xterm-256color" || "screen-256color"
  set t_Co=256
  set t_Sf=[3%dm
  set t_Sb=[4%dm
elseif &term =~ "xterm-color"
  set t_Co=8
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

let g:solarized_termcolors=256
set background =dark
colorscheme solarized

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

" Only do this part when compiled with support for autocommands
if has("autocmd")
    " Enable file type detection
    filetype on

    " Syntax of these languages is fussy over tabs Vs spaces
    autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

    " Customisations based on house-style (arbitrary)
    autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab omnifunc=htmlcomplete#CompleteTags
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab  omnifunc=csscomplete#CompleteCSS
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab textwidth=79 omnifunc=pythoncomplete#Complete
    autocmd FileType php setlocal ts=4 sts=4 sw=4 expandtab  omnifunc=phpcomplete#CompletePHP
    autocmd FileType coffee setlocal shiftwidth=2 expandtab
    au filetype sql         set omnifunc=sqlcomplete#Complete
    au filetype xml         set omnifunc=xmlcomplete#CompleteTags

    " Source the vimrc file after saving it
     autocmd bufwritepost .vimrc source $MYVIMRC
     autocmd FileType js,php,py autocmd BufWritePre <buffer> :%s/\s\+$//e

endif

"Remove the ~
set nobackup
set nowritebackup
set noswapfile

nmap <leader>f :NERDTreeToggle<CR>
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>l :set list!<CR>
nmap <leader>sp :set spell spelllang=fr<CR> 
set listchars=tab:▸\ ,eol:¬

