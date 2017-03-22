call plug#begin('~/.config/nvim/plugged')

"deoplete installation and enabled
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}


call plug#end()

call deoplete#enable()
autocmd FileType python nnoremap <leader>y :0,$!yapf<Cr>
autocmd CompleteDone * pclose " To close preview window of deoplete automagically

"You can specify revision/branch/tag.



let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

"key mappings
nnoremap ; <Right>
nnoremap l <Up>
nnoremap k <Down>
nnoremap j <Left>
nnoremap h ; 

nnoremap <C-;> <C-l>
nnoremap <C-l> <C-k>
nnoremap <C-k> <C-j>
nnoremap <C-j> <C-h>
"setting tab spaces
set tabstop=4

