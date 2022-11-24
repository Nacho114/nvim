set nocompatible
filetype off

autocmd! BufWritePost $MYVIMRC source $MYVIMRC | echom "Reloaded $NVIMRC"

call plug#begin('~/.config/nvim/plugged')

" UI
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'kyazdani42/nvim-web-devicons'
Plug 'itchyny/lightline.vim'

" Fancy UI
Plug 'rcarriga/nvim-notify'
Plug 'folke/noice.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'junegunn/goyo.vim'

" Core
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-hop.nvim'

" Core extra
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'rust-lang/rust.vim'

" Utility
Plug 'rlane/pounce.nvim'
Plug 'toppair/reach.nvim'
Plug 'ThePrimeagen/harpoon'

call plug#end()

source ~/.config/nvim/vim/_settings.vim
source ~/.config/nvim/vim/_mappings.vim
source ~/.config/nvim/vim/_lsp.vim
source ~/.config/nvim/vim/_ui.vim

lua require('init')
