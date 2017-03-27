call plug#begin('~/.config/nvim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'Valloric/YouCompleteMe', {'do': './install.py --racer-completer'}
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-surround'


call plug#end()

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'
let g:racer_cmd = '~/.cargo/bin/racer'
let g:racer_experimental_completer = 1
let g:ycm_rust_src_path = '~/.rustup/toolchains/stable-x86_64-unkown-linux-gnu/lib/rustlib/src/rust/src'

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

"setting tab spaces
set tabstop=4

