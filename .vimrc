:" vi互換モードをオフ
set nocompatible

" ファイルタイププラグインを有効
filetype indent plugin on

" 色付け
syntax on

" バッファを保存しなくても、他のバッファを表示する
set hidden

" 検索結果を強調表示
set hlsearch

" オートインデント、改行、バックスペースで削除
set backspace=indent,eol,start

" オートインデント
set autoindent
set smartindent

" 画面下にルーラを表示
set ruler

set list
set listchars=tab:^\ ,eol:↲,trail:~

" ステータスラインを表示
set laststatus=2
set statusline=%<%f\ %m\ %r%h%w%=\ %{'['.(&fenc!=''?&fenc:&enc).(&bomb?':BOM':'').']['.&ff.']'}(%v,%l)/%L%8P\ 

" マウスを有効化
set mouse=ivn

" 行番号表示
set number

" タイトル表示
set title

" モードを表示
set showmode

" カーソル行のハイライト
set cursorline

" tab幅
set tabstop=4
set shiftwidth=4

" 全角表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

" カーソルキーで行の移動
set whichwrap=b,s[,],<,>

" インクリメンタルサーチ
set incsearch

" grep結果を別window
autocmd QuickFixCmdPost *grep* cwindow

nnoremap gy "OP

" 折り返しは78文字
set textwidth=78

" ビープ音を消す
set visualbell t_vb=

map ,pt <Esc>:%! perltidy -se<CR>
map ,ptv <Esc>:'<,'>! perltidy -se<CR>

set clipboard+=unnamed
set clipboard+=autoselect

nnoremap gr gT

nnoremap <ESC><ESC> :nohlsearch<CR>
map <C-e> :NERDTreeToggle<CR>

" 折り返しなし
set nowrap
set textwidth=0
set formatoptions=q

"set background=dark
"colorscheme solarized
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

set directory=~/.vim/tmp
set backupdir=~/.vim/tmp
set undodir=~/.vim/tmp

set guifont=Osaka-Mono:h16

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/itoa/.vim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/itoa/.vim')
  call dein#begin('/Users/itoa/.vim')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/itoa/.vim/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  call dein#add('fatih/vim-go')
  call dein#add('scrooloose/nerdtree')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/unite-outline')
  call dein#add('kannokanno/previm')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
"

" golang
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1

" NERDTree
let NERDTreeShowHidden = 1

" unit outline
let g:unite_split_rule = 'botright'
noremap <C-o> :Unite -vertical -winwidth=40 outline<Return>

" kannokanno/previm
au BufRead,BufNewFile *.md set filetype=markdown
let g:previm_open_cmd = 'open -a Google\ Chrome'
let g:vim_markdown_folding_disabled=1

