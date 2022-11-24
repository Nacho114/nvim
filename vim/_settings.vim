" filetype on 
" filetype plugin on
" filetype indent on
" syntax enable

" Plugin settings
let g:rustfmt_autosave = 1

" What is this for?
autocmd InsertLeave,TextChanged * if &readonly == 0 && filereadable(bufname('%'))
                                 \ | silent update | endif
set number
set relativenumber
set nowrap
set ignorecase
set smartcase
set incsearch
set mouse=a
set clipboard+=unnamedplus
set nobackup
set noswapfile
set noshowmode
set autoindent
set smartindent
set expandtab tabstop=2 shiftwidth=2 softtabstop=2 

function! s:goyo_enter()
  set wrap
endfunction

function! s:goyo_leave()
  set nowrap
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
