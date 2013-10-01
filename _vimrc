"---------------------------------------------
filetype off

if has( 'vim_starting' )
set runtimepath+=$vim/plugins/neobundle.vim/
call neobundle#rc( expand( '$vim/plugins/' ) )
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'mkitt/tabline.vim'

filetype plugin indent on
"---------------------------------------------
let g:Powerline_symbols="fancy"

"set guioptions-=T "ツールバーなし
"set guioptions-=m "メニューバーなし
set guioptions-=l "左スクロールバーなし
set guioptions-=L
set guioptions-=b "下スクロールバーなし

" 無名レジスタに入るデータを、*レジスタにも入れる。
set clipboard+=unnamed
