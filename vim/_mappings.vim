" ; as :
nnoremap ; :

let mapleader=" "

nnoremap <silent> <leader>s :silent write <cr> :echo "セーブ" <cr> 
" nnoremap <leader>s :write<cr>
nnoremap <Leader>bd <cmd>bd<CR>
inoremap jk <Esc>
nnoremap q <c-v>

:command Reload source $MYVIMRC
:command Cheat split ~/.cheatsheet.md  
:command Config split ~/.config/nvim/init.vim  

" Search results centered please
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" Jump to start and end of line using the home row keys
map H ^
map L $

" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Move by line
nnoremap j gj
nnoremap k gk

" <leader><leader> toggles between buffers
nnoremap <leader><leader> <c-^>

" Keymap for replacing up to next _ or -
noremap <leader>m ct_

" Plugin mappings

nmap ff <cmd>Pounce<CR>
vmap ff <cmd>Pounce<CR>

nnoremap <leader>rb <cmd>lua require('_utils').reach.buffers()<cr>
nnoremap <leader>rm <cmd>lua require('_utils').reach.marks()<cr>

nnoremap <leader>rg <cmd>lua require('_utils').telescope.live_grep()<cr>
nnoremap <leader>fd <cmd>lua require('_utils').telescope.find_files()<cr>
nnoremap <leader>fk <cmd>lua require('telescope.builtin').keymaps()<cr>
