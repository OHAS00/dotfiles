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
NeoBundle 'mattn/emmet-vim'
NeoBundle 'vim-scripts/YankRing.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-scripts/Changed'
NeoBundle 'vim-scripts/diffchar.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'vim-scripts/sudo.vim'

filetype plugin indent on
"---------------------------------------------

" lightline settings
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

"vi互換
set nocompatible

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
set ts=2 sw=2 sts=0 " タブは半角2文字分のスペース

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
set ttymouse=xterm2

" キーコードはすぐにタイムアウト。マッピングはタイムアウトしない
set notimeout ttimeout ttimeoutlen=200

" <F11>キーで'paste'と'nopaste'を切り替える
set pastetoggle=<F11>

" <C-L>で検索語の強調表示を解除する
nnoremap <C-L> :nohl<CR><C-L>

"バックアップファイルを作成しない"
set nobackup

"256色表示"
set t_Co=256

"自動改行オフ
set tw=0

"ファイルエンコーディング設定
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp,default,latin
set fileencoding=utf-8
set encoding=utf-8

"emmet-vim の設定
let g:user_emmet_settings = {
\   'lang' : 'ja'
\ }

"NERDtreeをF9で呼ぶ
nmap <F9> :NERDTreeToggle<Enter>

"------------------------------------
"neocomplcache設定
"------------------------------------"{{{

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : ''
    \ }

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
"}}}

"------------------------------------
" Open & Reload .vimrc
"------------------------------------"{{{
set foldmethod=expr
set modeline
command! Evimrc  e $MYVIMRC

augroup source-vimrc
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
  autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END

"}}}
