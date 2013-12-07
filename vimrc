set nocompatible
execute pathogen#infect()
syntax on
filetype plugin indent on

" colors
set t_Co=256
set background=dark
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

" Nerdtree
let NERDTreeShowBookmarks=1
let NERDTreeDirArrows=0
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0


let g:Powerline_symbols = 'fancy'



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

let mapleader = ","
" Shortcut to rapidly toggle `set list`
nmap <leader>f :NERDTreeToggle<CR>
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
