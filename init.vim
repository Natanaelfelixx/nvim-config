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

function! GitCommitPush(msg)
  if a:msg == ''
    echo "Commit message required"
    return
  endif
  let l:branch = system('git rev-parse --abbrev-ref HEAD')
  let l:branch = substitute(l:branch, '\n', '', 'g')
  execute '!git add .'
  execute '!git commit -m ' . a:msg . ''
  execute '!git push origin ' . l:branch
endfunction

command! -nargs=1 Pushatudo call GitCommitPush(<f-args>)
