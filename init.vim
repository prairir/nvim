call plug#begin('~/.config/nvim/plugged')

"rust
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
"auto completion
Plug 'maralla/completor.vim'
"delimitor
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-surround'
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
let g:completor_python_binary = '/usr/bin/python3'
let g:completor_racer_binary = '~/.cargo/bin/racer'
let g:completor_auto_trigger = 1

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

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

noremap <C-n> :NERDTreeToggle<CR>
"setting tab spaces
set tabstop=4

"line numbering
set number
set nuw=3
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE
