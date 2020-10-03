colorscheme lucius

set background=dark

let g:lighthline = {'colorscheme' : 'lucius' }

set noswapfile

set autoread

set hidden

set showcmd

set number

set list

set virtualedit=onemore

set smartindent

set visualbell

set showmatch

set laststatus=2

set wildmode=list:longest

set autoindent

set wildmenu

nnoremap j gj
nnoremap k gk

syntax enable



set list listchars=tab:\>\-

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

set list listchars=tab:\▸\-

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
