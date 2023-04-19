let mapleader=" "		""Assign the LEADER key () to the space bar key."
"Change the function keys during normal mode (replace the key in front with the corresponding function key)."noremap <LEADER><CR> :nohlsearch<CR>
noremap j h
noremap J 5h
noremap i k
noremap I 5k
noremap k j
noremap s <nop>
noremap K 5j
noremap L 5l
noremap h i
noremap H I
noremap ; :

set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir
set clipboard=unnamedplus 	"share clipboard
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

map S :w!<CR>
map Q :q!<CR>
map R :w<CR> :source $MYVIMRC<CR>
map <C-o> :w<CR> :source $MYVIMRC<CR> :PlugInstall<CR>
map sp :source $VIMRUNTIME/syntax/2html.vim<CR>
map <tab> h<tab><ESC>
map ' h"<ESC>
map , h#<ESC>
map . o<ESC>
map <C-c> <ESC>
map ss :r !ls<CR>
map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>

" use firefox
let g:mkdp_brower = 'firefox'
" Ctrl + p "Open/Close preview."
map r :MarkdownPreviewToggle<CR>

map <LEADER>j <C-w>h	
map <LEADER>k <C-w>j
map <LEADER>l <C-w>l
map <LEADER>i <C-w>k

map s<up> :res +5<CR>
map s<down> :res -5<CR>
map s<left> :vertical resize-5<CR>
map s<right> :vertical resize+5<CR>

map tu :tabe<CR>		
map tj :-tabnext<CR>
map tl :+tabnext<CR>	
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K


set nocompatible       
set number			    
filetype on			    
" set relativenumber		
set history=1000	    
set background=dark     
syntax on			    
set autoindent		     
set smartindent		    
set tabstop=4		     
set shiftwidth=4	     
set guioptions=T	     
set vb t_vb=		     
set cindent              
set ruler			     
set cursorline          
set hlsearch              
 exec "nohlsearch"
set incsearch           
set nowrapscan          
set ignorecase          
set smartcase			 

 exec "nohlsearch"

set nobackup			 
set noswapfile		 	 
set showcmd         	  
set wrap 				 
set wildmenu			 
set shortmess=atI   	 
autocmd InsertLeave * se nocul  	 
autocmd InsertEnter * se cul    	 
set autoread

func! ComplieCode1()
exec "w"
if &filetype == "c"
exec "!gcc -std=gnu99 % -lm && ./a.out"
endif
endfunc

func! ComplieCode2()
exec "w"
if &filetype == "c"
exec "!clang -std=gnu99 % -lm && ./a.out"
endif
endfunc

func! ComplieCode3()
exec "w"
exec "!chmod 755 % && ./%"
endfunction

func NERDTree()
exec "NERDTree"
endfunc
map<C-n> :call NERDTree()<CR>
imap<C-n> <ESC> :call NERDTree()<CR>
vmap<C-n> <ESC> :call NERDTree()<CR>
func Save()
exec "w"
endfunc
map<C-w> :call Save()<CR>
imap<C-w> <ESC> :call Save()<CR>
vmap<C-w> <ESC> :call Save()<CR>

func! OnlyExit()
exec "qa!"
endfunc
map <C-b> :call OnlyExit()<CR>
imap <C-b> <ESC> :call Exit()<CR>
vmap <C-b> <ESC> :call Exit()<CR>

 map <C-x> :call ComplieCode1()<CR>
imap <C-x> <ESC>:call ComplieCode1()<CR>
vmap <C-x> <ESC>:call ComplieCode1()<CR>

 map <C-p> :call ComplieCode2()<CR>
imap <C-p> <ESC>:call ComplieCode2()<CR>
vmap <C-p> <ESC>:call ComplieCode2()<CR>

 map <C-l> :call ComplieCode3()<CR>
imap <C-l> <ESC>:call ComplieCode3()<CR>
vmap <C-l> <ESC>:call ComplieCode3()<CR>

 map <C-z> :wq!<CR>
imap <C-z> <ESC>:wq!<CR>
vmap <C-z> <ESC>:wq!<CR>

autocmd BufNewFile *.c exec ":call AddTitleForShell()"
function AddTitleForShell()
call append(0,"#include <stdio.h>")
"call append(1,"#include <stdlib.h>")
"call append(2,"#include <string.h>")
endfunction

autocmd BufNewFile *.sh exec ":call AddTitleForShell1()"
function AddTitleForShell1()
call append(0,"#!/bin/bash")
endfunction


call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
"Plug 'connorholyday/vim-snazzy'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
"
" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }
"
" Error checking
Plug 'w0rp/ale'
"
" Auto Complete
"Plug 'Valloric/YouCompleteMe'
"
" Undo Tree
Plug 'mbbill/undotree/'
"
" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'
"
" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
"
" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'
"
"
" Python
Plug 'vim-scripts/indentpython.vim'
"
" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'gcmt/wildfire.vim' " in Visual mode, type k' to select all text in '', or type k) k] k} kp
"
"
"Nerdtree
Plug 'scrooloose/nerdtree'
call plug#end()
"
"let g:SnazzyTransparent = 1
"color snazzy


autocmd Filetype markdown inoremap <localLeader>f <Esc>/<++><CR>:nohlsearch<CR>i<Del><Del><Del><Del>
autocmd Filetype markdown inoremap <localLeader>1 <ESC>o#<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <localLeader>2 <ESC>o##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <localLeader>3 <ESC>o###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <localLeader>4 <ESC>o####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <localLeader>5 <ESC>o#####<Space><Enter><++><Esc>kA

autocmd Filetype markdown inoremap <localLeader>c ```<Enter><++><Enter>```<Enter><++><Enter><Esc>4kA
autocmd Filetype markdown inoremap <localLeader>s ``<++><Esc>F`i
autocmd Filetype markdown inoremap <localLeader>/ &emsp;<Esc>a
autocmd Filetype markdown inoremap <localLeader><CR> <br><Esc>a

autocmd Filetype markdown inoremap <localLeader>p ![](<C-R>+ "<++>")<++><Esc>F]i
autocmd Filetype markdown inoremap <localLeader>a [](<C-R>+ "<++>")<++><Esc>F]i
autocmd Filetype markdown inoremap <localLeader>l <ESC>o--------<Enter>

function! Count(pattern,startline)
  let l:cnt = 0
  silent! exe a:startline . ',.s/' . a:pattern . '/\=execute(''let l:cnt += 1'')/gn'
  return l:cnt
endfunction

autocmd Filetype markdown inoremap <expr> <localLeader><F12> eval(Count('\[\^\d\+\]',1)+1)
autocmd Filetype markdown imap <localLeader>n [^<localLeader><F12>]<Esc>ya[Go<C-O>p: <++><Esc><C-o>f]a

function! Findtitle()
    for i in range(line('.'))
        if matchstr(getline(line('.')-i),'^# \+')!=#''
            let l:latesttitleline=line('.')-i
            break
        else
            let l:latesttitleline=line('.')
        endif
    endfor
    return l:latesttitleline
endfunction
autocmd Filetype markdown inoremap <expr> <localLeader><F11> Count('^# \+',1)
autocmd Filetype markdown inoremap <expr> <Leader><localLeader><F11> Count(' \\tag{\d\+-\d\+}',Findtitle())+1
autocmd Filetype markdown imap <localLeader>q <ESC>o$$<Enter><Enter> \tag{<localLeader><F11>-<Leader><localLeader><F11>}$$<Enter><BS><++><Esc>2iA


