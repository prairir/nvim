call plug#begin('~/.config/nvim/plugged')

"rust
Plug 'rust-lang/rust.vim'
"auto completion
Plug 'Valloric/YouCompleteMe', {'do': './install.py --racer-completer'}
"delimitor
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-surround'
"for indention level
Plug 'yggdroot/indentline'
"nerd tree
Plug 'scrooloose/nerdtree'
"git
Plug 'tpope/vim-fugitive'
"colour scheme
Plug 'blueshirts/darcula'
"terminal integration
Plug 'wvffle/vimterm'
call plug#end()

"path declarations
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'
let g:racer_cmd = '~/.cargo/bin/racer'
let g:racer_experimental_completer = 1
let g:ycm_rust_src_path = '/home/ryan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu'
let g:indentLine_enable = 1

"colour scheme
syntax enable
colorscheme darcula

"nerd tree autostart up
autocmd vimenter * NERDTree

"key mappings
nnoremap ; <Right>
nnoremap l <Up>
nnoremap k <Down>
nnoremap j <Left>
nnoremap h ; 

nnoremap <C-;> <C-w>l
nnoremap <C-l> <C-w>k
nnoremap <C-k> <C-w>j
nnoremap <C-j> <C-w>h

nnoremap <F7> :call vimterm#toggle() <CR>
tnoremap <F7> <C-\><C-n>:call vimterm#toggle() <CR>
"setting tab spaces
set tabstop=4

"line numbering
set number
set nuw=3
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE
