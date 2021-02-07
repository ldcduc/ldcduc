" Gotta be first
set nocompatible

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'sonph/onehalf', { 'rtp': 'vim' }
Plugin 'jcherven/jummidark.vim'
Plugin 'arzg/vim-colors-xcode'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'

call vundle#end()

filetype plugin indent on
syntax on

" --- Color Scheme ---
" colorscheme jummidark
colorscheme dracula
" colorscheme xcodewwdc
" colorscheme xcodedark
" colorscheme xcodedarkhc
" colorscheme xcodelight
" colorscheme xcodelighthc


" set t_Co=256
" set cursorline
" colorscheme onehalfdark
" let g:airline_theme='onehalflight'
" colorscheme onehalflight
" let g:airline_theme='onehalfdark'

" --- General settings ---

" set nrformats=  " consider 00x as decimal
set mouse=a
set backspace=indent,eol,start
set ruler
set number
set showcmd       " show command in the bottom
set cursorline    " identify current line
set bs=2
set autoindent
set nrformats=
set wildmenu      " visual autocomplete for command menu
set lazyredraw    " redraw only when we need to --> faster macro
set showmatch     " highlight matching [{()}]
set clipboard=unnamedplus
"
" --- \Tab related stuffs ---
set shiftwidth=4 softtabstop=4 expandtab
" set shiftwidth=4 " tab size = 4
" set softtabstop=4
" set expandtab
set shiftround

set incsearch     " search as characters are entered
set hlsearch      " highlight matches

" --- KEY MAPPING ---
:let mapleader = ","
" Allow us to use Ctrl-s and Ctrl-q as key blinds
silent !stty -ixon
" Restore default behavior when leaving Vim
autocmd VimLeave * silent !stty ixon

nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>
vnoremap <c-s> <Esc>:w<CR>

" insert special characters
inoremap <leader>bt    `
inoremap <leader>ul    _
"       greater than or equal to
inoremap <leader>ge    ≥
"       less than or equal to
inoremap <leader>le    ≤
"       not equal to
inoremap <leader>ne    ≠
"       plus-minus sign
inoremap <leader>pm    ±
"       infinity
inoremap <leader>inf   ∞
"       fake arrows
inoremap <leader>ar    ->
inoremap <leader>arr   -->
"       real arrows
inoremap <leader>larr  ←

inoremap <leader>rarr  →
inoremap <leader>lrarr ↔
inoremap <leader>uarr  ↑
inoremap <leader>darr  ↓
inoremap <leader>udarr ↕

"   Searching
nnoremap <space> /
nnoremap <nul> ?
" turn off search highlight
nnoremap <silent> <leader><cr> :noh<cr>
" count token under the cursor
nnoremap <leader>* *<C-O>:%s///gn<CR>

" highlight last inserted text
nnoremap gV `[v`]

inoremap jk <Esc>

" []{}() auto closing

inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap ((     (

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
"inoremap        <  <><Left>
"inoremap <expr> >  strpart(getline('.'), col('.')-1, 1) == ">" ? "\<Right>" : ">"

inoremap [      []<Left>
inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap [[     [

"   Buffers
" Multiple files
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
" Close current buffer
map <leader>bd :Bclose<cr>
" Close all buffers
map <leader>ba :1,1000 bd!<cr>

" resize current buffer by +/- 5
nnoremap <C-left> :vertical resize -5<cr>
nnoremap <C-down> :resize +5<cr>
nnoremap <C-up> :resize -5<cr>
nnoremap <C-right> :vertical resize +5<cr>

" --- Tab Navigation ---
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>

nnoremap <C-j> gT
nnoremap <C-k> gt

" Vimrc
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>so :source $MYVIMRC<CR>
nnoremap <leader>zv :vsp ~/.zshrc<CR>

" save session
nnoremap <leader>s :mksession<CR>
nnoremap <leader>S :mksession!<CR>

" replace “ and ” to "
nnoremap <leader>oquote :%s/“/"/g<CR>
nnoremap <leader>cquote :%s/”/"/g<CR>

" --- FUNCTION ---

function! MyTabCompletion()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-P>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=MyTabCompletion()<CR>

function! MyComment()
  let l = getline('.')
  if l =~ '^\s*\/\/'
    let l = substitute(l, '\/\/', '', '')
  else
    let l = '//' . l
  endif
  call setline(line('.'), l)
endfunction
nnoremap <C-c> :call MyComment()<CR>

function! CPPSET()
  nnoremap <buffer> <F10> :w<cr> :!rm %< <cr>:!clear; g++ % -O2 -o %< -std=c++14 -I ./<cr> :!./%<<cr>
  nnoremap <buffer> <F9>  :w<cr> :!clear; ./%<<cr>
  nnoremap <buffer> <F8>  :w<cr> :!clear; g++ % -O2 -o %< -std=c++14 -I ./<cr>
  nnoremap <buffer> <F7>  :w<cr> :!clear; g++ *.cpp -O2 -o %< -std=c++14 -I ./<cr>:!./%<<cr>
  nnoremap <buffer> <F6>  :w<cr> :!clear; g++ *.cpp -O2 -o %< -std=c++14 -I ./<cr>
  " nnoremap <buffer> <F10> :w<cr>:!clear; g++ -o %< % -O2 -lm -lpthread -I/usr/X11R6/include -L/usr/X11R6/lib -lm -lpthread -lX11<cr>
endfunction

function! CSET()
  nnoremap <buffer> <F8> :w<cr>:!gcc -o %< %<cr>
  nnoremap <buffer> <F9> :w<cr>:!gcc -o %< %<cr>:!./%<<cr>
endfunction

function! JAVASET()
  nnoremap <buffer> <F8> :!javac %<cr>
  nnoremap <buffer> <F9> :!javac %<cr>:!clear;java %< %<cr>
endfunction

function! RUBYSET()
  nnoremap <buffer> <F9> :w<cr>:exec '!clear;ruby' shellescape(@%, 1)<cr>
"  nnoremap <buffer> <F8> :w<cr>:exec '!clear;rspec' shellescape(@%, 1)<cr>
"  nnoremap <buffer> <F9> :w<cr>:!ruby %<cr>
endfunction

function! PYTHONSET()
  nnoremap <buffer> <F9> :w<cr>:!python3 %<cr>
endfunction

function! HTMLSET()
  nnoremap <buffer> <F9> :w<cr>:!open %<cr>
endfunction

function! JAVASCRIPTSET()
  nnoremap <buffer> <F9> :w<cr>:!node %<cr>
endfunction

function! SortLines() range
    execute a:firstline . "," . a:lastline . 's/^\(.*\)$/\=strdisplaywidth( submatch(0) ) . " " . submatch(0)/'
    execute a:firstline . "," . a:lastline . 'sort n'
    execute a:firstline . "," . a:lastline . 's/^\d\+\s//'
endfunction
 
function! CountPatternInline(pattern)
    let result = execute (".s/" . a:pattern. "//gn")
    return result
endfunction

nnoremap <leader>duc :let j=execute(".s/#//gn")<CR>
nnoremap <leader>ab "=j<CR>Pj


autocmd FileType cpp           call CPPSET()
autocmd FileType c             call CSET()
autocmd FileType java          call JAVASET()
autocmd FileType ruby          call RUBYSET()
autocmd FileType python        call PYTHONSET()
autocmd FileType html          call HTMLSET()
autocmd FileType javascript    call JAVASCRIPTSET()

" ----- jistr/vim-nerdtree-tabs -----
"  Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>
" To have NERDTree always open on startu
let g:nerdtree_tabs_open_on_console_startup = 0
let g:NERDTreeWinPos = "right"
