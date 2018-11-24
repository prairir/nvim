call plug#begin('~/.config/nvim/plugged')

"slim
Plug 'slim-template/vim-slim'
"rust
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
"auto completion
Plug 'maralla/completor.vim'
"snippets
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
"delimitor
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-surround'
"nerd tree
Plug 'scrooloose/nerdtree'
"git
Plug 'tpope/vim-fugitive'
"colour scheme
Plug 'w0ng/vim-hybrid'
"terminal integration
Plug 'wvffle/vimterm'
"syntax linter
Plug 'vim-syntastic/syntastic'
"latex
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
call plug#end()

"path declarations
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'
let g:completor_python_binary = '/usr/bin/python3'
"let g:completor_racer_binary = '~/.cargo/bin/racer'
set hidden
let g:racer_cmd = '~/.cargo/bin/racer'
let g:racer_experimental_completor = 1
let g:completor_auto_trigger = 1

"snippets stuff
let g:UltiSnipsExpandTrigger="<c-o>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

"syntastic
set statusline+=#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height=5
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"colour scheme
syntax enable
set background=dark
colorscheme hybrid

"nerd tree configuration 
autocmd vimenter * NERDTree
autocmd bufenter * if(winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"vim lated preview
autocmd Filetype tex setl updatetime=1

"latex 
filetype plugin on 
filetype indent on 

let g:vimtex_compiler_progname = 'nvr'
"key mappings
nnoremap ; <Right>
nnoremap l <Up>
nnoremap k <Down>
nnoremap j <Left>
nnoremap h ; 

vnoremap h ;
vnoremap j <Left>
vnoremap k <Down>
vnoremap l <Up>
vnoremap ; <Right>
nnoremap <C-;> <C-w>l
nnoremap <C-l> <C-w>k
nnoremap <C-k> <C-w>j
nnoremap <C-j> <C-w>h

"reversing text
vnoremap hrv c<C-O>:set revins<CR><C-R>"<Esc>:set norevins<CR>

nnoremap <F7> :call vimterm#toggle() <CR>
tnoremap <F7> <C-\><C-n>:call vimterm#toggle() <CR>

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

noremap <C-n> :NERDTreeToggle<CR>
"setting tab spaces
set tabstop=4
set shiftwidth=0
set expandtab

"line numbering
set number relativenumber
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END
set nuw=3
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE
