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
" ɽ����
"############################

set number " ���ֹ�ɽ��
set showmode " �⡼��ɽ��
set title " �Խ���Υե�����̾��ɽ��
set ruler " �롼�顼��ɽ��
set showcmd " ������Υ��ޥ�ɤ򥹥ơ�������ɽ������
set showmatch " ������ϻ����б������̤�ɽ��
set laststatus=2 " ���ơ������饤�����ɽ��

"############################
" �ץ���ߥ󥰥إ�׷�
"############################

syntax on " ���顼ɽ��
set smartindent " �����ȥ���ǥ��

" tab��Ϣ

set expandtab " ���֤�����˶���ʸ������
set ts=4 sw=4 sts=0 " ���֤�Ⱦ��4ʸ��ʬ�Υ��ڡ���

"###########################
" ������
"###########################

set ignorecase " ����ʸ���󤬾�ʸ���ξ�����ʸ����ʸ������̤ʤ���������
set smartcase " ����ʸ�������ʸ�����ޤޤ�Ƥ�����϶��̤��Ƹ�������
set wrapscan " �������˺Ǹ�ޤǹԤä���ǽ�����
set noincsearch " ����ʸ�������ϻ��˽缡�о�ʸ����˥ҥåȤ����ʤ�
set hlsearch " �������Ĵɽ��(<C-L>�򲡤��ȸ��ߤζ�Ĵɽ����������) 

" �Хåե�����¸���ʤ��Ƥ�¾�ΥХåե���ɽ���Ǥ���褦�ˤ���
set hidden

" ���ޥ�ɥ饤���䴰��������
set wildmenu

" �����ȥ���ǥ�ȡ����ԡ����󥵡��ȥ⡼�ɳ���ľ��˥Хå����ڡ���������
" ����Ǥ���褦�ˤ���
set backspace=indent,eol,start

" ��ư���ޥ�ɤ�Ȥä��Ȥ�����Ƭ�˰�ư���ʤ�
set nostartofline

" �Хåե����ѹ�����Ƥ���Ȥ������ޥ�ɤ򥨥顼�ˤ���ΤǤʤ�����¸���뤫
" �ɤ�����ǧ�����
set confirm

" �ӡ��פ�����˥ӥ��奢��٥�(���̥ե�å���)��Ȥ�
set visualbell

" �����ƥӥ��奢��٥��̵��������
set t_vb=

" ���⡼�ɤǥޥ�����ͭ����
set mouse=a

" ���������ɤϤ����˥����ॢ���ȡ��ޥåԥ󥰤ϥ����ॢ���Ȥ��ʤ�
set notimeout ttimeout ttimeoutlen=200

" <F11>������'paste'��'nopaste'���ڤ��ؤ���
set pastetoggle=<F11>

" <C-L>�Ǹ�����ζ�Ĵɽ����������
nnoremap <C-L> :nohl<CR><C-L>

"�Хå����åץե������������ʤ�"
set nobackup

"PHPʸˡ�����å�"
autocmd filetype php :set makeprg=php\ -l\ %
autocmd filetype php :set errorformat=%m\ in\ &f\ on\ line\ %l

"utf8����"
set encoding=utf-8

"256��ɽ��"
set t_Co=256
