" カラースキーム関連
set background=dark

colorscheme hybrid

" スワップファイルを作らない
set noswapfile
" 他でファイルが変更されたら読み直す
set autoread
" 編集中でも他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示
set showcmd
" 行数を表示
set number
" 不可視文字を表示
set list
" 行末の1文字先までカーソルラインを移動できるように
set virtualedit=onemore
" スマートインデント({とかで調整してくれる) 
set smartindent
" ビープ音を可視化
set visualbell
" 対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインでTAB補完
set wildmenu
" コマンドラインでTABによるファイル名補完
set wildmode=list:longest,full
" 改行時に前の行のインデントを引く継ぐ
set autoindent

" カーソルを表示行で移動
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk

" シンタックスハイライトの有効化
syntax enable



set list listchars=tab:\▸\-

set expandtab

set tabstop=2

set shiftwidth=2

set cursorline

set ignorecase

set smartcase

set incsearch

set wrapscan

set hlsearch

set splitbelow


set expandtab


nmap <Esc><Esc> :nohlsearch<CR><Esc>

nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>
inoremap jj <Esc>

"矢印"
function! HardMode ()
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
endfunction

function! EasyMode ()
noremap <Up> <Up>
noremap <Down> <Down>
noremap <Left> <Left>
noremap <Right> <Right>
endfunction

command! HardMode call HardMode()
command! EasyMode call EasyMode()

"ペースト設定----------------------------------------------------------------------------------"
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif
"----------------------------------------------------------------------------------------------"
