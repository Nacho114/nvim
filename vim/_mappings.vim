nmap ff <cmd>Pounce<CR>
vmap ff <cmd>Pounce<CR>

let mapleader=" "

nnoremap <silent> <leader>s :write<cr>
nnoremap <leader>w <c-w>
nnoremap <Leader>bd <cmd>bd<CR>
inoremap jk <Esc>
nnoremap q <c-v>

:command Reload source $MYVIMRC
:command Cheat split ~/.cheatsheet.md  
:command Config split ~/.config/nvim/init.vim  

"auto-center on movement commands
nmap G Gzz
nmap H Hzz
nmap L Lzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz
nmap <C-d> <C-d>zz
nmap <C-u> <C-u>zz
