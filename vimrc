let mapleader=" "		" 将LEADER键（\）赋给空格键
" 普通模式时更改功能键（将前面的键改成后面的功能键）
noremap <LEADER><CR> :nohlsearch<CR>
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
set clipboard=unnamedplus 	"共享剪切版
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

" 使用firefox浏览器
let g:mkdp_brower = 'firefox'
" Ctrl + p 打开/关闭预览
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


set nocompatible        " 去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set number			    " 显示行号
filetype on			    " 检测文件的类型
" set relativenumber		" 突出当前行号
set history=1000	    " 记录历史的行数
set background=dark     " 背景使用黑色
syntax on			    " 语法高亮度显示
set autoindent		    " 自动缩进
set smartindent		    " 智能对齐
set tabstop=4		    " 设置tab键为4个空格
set shiftwidth=4	    " 当行之间交错时使用4个空格
set guioptions=T	    " 去除vim的GUI版本中的toolbar
set vb t_vb=		    " 当vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声
set cindent             "使用C样式的缩进
set ruler			    " 打开状态栏标尺
set cursorline          " 为光标所在行加下划线
set hlsearch            " 搜索时高亮显示被找到的文本
" 重新载入时不显示之前搜索结果
exec "nohlsearch"
set incsearch           " 输入搜索内容时就显示搜索结果
set nowrapscan          " 禁止在搜索到文件两端时重新搜索
set ignorecase          " 检索时忽略大小写
set smartcase			" 智能大小写

" 重新进入时不显示之前搜索结果
exec "nohlsearch"

set nobackup			" 不自动备份
set noswapfile		 	" 设置不产生临时文件
set showcmd         	" 输入的命令显示出来，看的清楚些 
set wrap 				" 字体不会超出窗口
set wildmenu			" 命令模式时Tab键补齐
set shortmess=atI   	" 启动的时候不显示那个援助乌干达儿童的提示 
autocmd InsertLeave * se nocul  	" 用浅色高亮当前行
autocmd InsertEnter * se cul    	" 用浅色高亮当前行
set autoread

" 定义保存编译并执行代码函数
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

" 映射Ctrl+x键调用gcc编译并执行函数
map <C-x> :call ComplieCode1()<CR>
imap <C-x> <ESC>:call ComplieCode1()<CR>
vmap <C-x> <ESC>:call ComplieCode1()<CR>

" 映射Ctrl+p键调用clang编译并执行函数
map <C-p> :call ComplieCode2()<CR>
imap <C-p> <ESC>:call ComplieCode2()<CR>
vmap <C-p> <ESC>:call ComplieCode2()<CR>

" 映射Ctrl+l键执行shell脚本
map <C-l> :call ComplieCode3()<CR>
imap <C-l> <ESC>:call ComplieCode3()<CR>
vmap <C-l> <ESC>:call ComplieCode3()<CR>

" 映射Ctrl+z键保存并退出
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


