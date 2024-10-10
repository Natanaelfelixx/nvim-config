" Vim-Plug Config
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-endwise'
Plug 'rhysd/conflict-marker.vim'
call plug#end()
set number

let mapleader=','

nmap <leader>/ :NERDTreeToggle<CR>
nmap <leader>s :w<CR>
nmap <leader>sq :wq<CR>

command! -nargs=1 Pushatudo execute 'Git add .' | execute 'Git commit -m "' . <q-args> . '"' | execute 'Git push origin $(git branch --show-current)'
