filetype plugin indent on

sytax on

colorscheme molokai

set nowrap
"検索系
set hlsearch
set ignorecase
set smartcase
"インデント系
set autoindent
"コマンド関係
set ruler
set number
set list
set wildmenu
set showcmd
"タブ関係
set shiftwidth=2
set softtabstop=2
set expandtab
set tabstop=2
set smarttab
set clipboard=unnamed
" インサートモードの時に C-j でノーマルモードに戻る
imap <C-j> <esc>
" [ って打ったら [] って入力されてしかも括弧の中にいる(以下同様)
imap [ []<left>
imap ( ()<left>
imap { {}<left>

" ２回esc を押したら検索のハイライトをヤメる
nmap <Esc><Esc> :nohlsearch<CR><Esc>
