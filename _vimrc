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
NeoBundle 'mattn/emmet-vim'

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

" 勝手に改行させない
set textwidth=0

"neocomplcache設定

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

"------------------------------------
" Lokaltog/vim-easymotion
"------------------------------------"{{{
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment
"}}}


"------------------------------------
"vim: foldmethod=marker
