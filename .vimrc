"---------------------------------------------
filetype off

if has( 'vim_starting' )
set runtimepath+=$HOME/dotfiles/vim/bundle/neobundle.vim/
call neobundle#rc( expand( '$HOME/dotfiles/vim/bundle/' ) )
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Lokaltog/vim-powerline'

filetype plugin indent on
"---------------------------------------------
let g:Powerline_symbols="fancy"

"############################
" 表示系
"############################

set number " 行番号表示
set showmode " モード表示
set title " 編集中のファイル名を表示
set ruler " ルーラーの表示
set showcmd " 入力中のコマンドをステータスに表示する
set showmatch " 括弧入力時の対応する括弧を表示
set laststatus=2 " ステータスラインを常に表示

"############################
" プログラミングヘルプ系
"############################

syntax on " カラー表示
set smartindent " オートインデント

" tab関連

set expandtab " タブの代わりに空白文字挿入
set ts=4 sw=4 sts=0 " タブは半角4文字分のスペース

"###########################
" 検索系
"###########################

set ignorecase " 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set smartcase " 検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan " 検索時に最後まで行ったら最初に戻る
set noincsearch " 検索文字列入力時に順次対象文字列にヒットさせない
set hlsearch " 検索語を強調表示(<C-L>を押すと現在の強調表示を解除する) 

" バッファを保存しなくても他のバッファを表示できるようにする
set hidden

" コマンドライン補完を便利に
set wildmenu

" オートインデント、改行、インサートモード開始直後にバックスペースキーで
" 削除できるようにする
set backspace=indent,eol,start

" 移動コマンドを使ったとき、行頭に移動しない
set nostartofline

" バッファが変更されているとき、コマンドをエラーにするのでなく、保存するか
" どうか確認を求める
set confirm

" ビープの代わりにビジュアルベル(画面フラッシュ)を使う
set visualbell

" そしてビジュアルベルも無効化する
set t_vb=

" 全モードでマウスを有効化
set mouse=a

" キーコードはすぐにタイムアウト。マッピングはタイムアウトしない
set notimeout ttimeout ttimeoutlen=200

" <F11>キーで'paste'と'nopaste'を切り替える
set pastetoggle=<F11>

" <C-L>で検索語の強調表示を解除する
nnoremap <C-L> :nohl<CR><C-L>

"バックアップファイルを作成しない"
set nobackup

"PHP文法チェック"
autocmd filetype php :set makeprg=php\ -l\ %
autocmd filetype php :set errorformat=%m\ in\ &f\ on\ line\ %l

"utf8設定"
set encoding=utf-8

"256色表示"
set t_Co=256
