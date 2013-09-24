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
set mouse=a

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

