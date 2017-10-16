filetype plugin indent on
" ファイルの折り返しを無効に
set nowrap
" 検索系
set hlsearch
set ignorecase
set smartcase
" 自動インデント
set autoindent
" 表示関係
set ruler
set number
set list
" コマンド関係
set wildmenu
set showcmd
" タブ関係
set shiftwidth=2
set softtabstop=2
set expandtab
set tabstop=2
set smarttab
" クリップボードを別アプリと共有
set clipboard=unnamed
" インサートモードの時に C-j でノーマルモードに戻る
imap <C-j> <esc>
" [ って打ったら [] って入力されてしかも括弧の中にいる(以下同様)
imap [ []<left>
imap ( ()<left>
imap { {}<left>
" ２回esc を押したら検索のハイライトをヤメる
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" leaderの設定
let mapleader="<\Space>"
"---------------------------
" Start Neobundle Settings.
"---------------------------
set nocompatible               " Be iMproved
filetype off                   " Required!
" bundleで管理するディレクトリを指定
if has('vim_starting')
set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle'))
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
" NERDtree(ファイラ)
NeoBundle 'scrooloose/nerdtree'
" molokai(colorscheme)
NeoBundle 'tomasr/molokai'
" Quickrun(お手軽実行環境)
NeoBundle 'thinca/vim-quickrun'
" Unite(統合ツール)
NeoBundle 'Shougo/unite.vim'
call neobundle#end()
filetype plugin indent on     " required!
"molokai用の設定
colorscheme molokai
syntax on
set t_Co=256
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck
" NERDTree設定
autocmd VimEnter * execute 'NERDTree'
let NERDTreeShowHidden = 1
"-------------------------
" End Neobundle Settings.
"-------------------------
