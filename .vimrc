call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
call plug#end()

set rnu nu
set ts=4 sw=4 et
set nowrap

let mapleader=','

inoremap kj <Esc>
inoremap Kj <Esc>
inoremap kJ <Esc>
inoremap KJ <Esc>

nnoremap ç :
nnoremap Ç :

nnoremap <c-p> :FZF<cr>
nnoremap <c-y> :NERDTreeToggle<cr>

nmap gd <Plug>(coc-definition)
nmap gr <Plug>(coc-references)
inoremap <silent><expr> <c-space> coc#refresh()

nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>

nnoremap <leader>k ddkP
nnoremap <leader>j ddp

highlight CocErrorSign ctermbg=Black
highlight CocErrorSign ctermfg=Red
highlight CocWarningSign ctermbg=Black
highlight CocWarningSign ctermfg=Red
highlight CocInfoSign ctermbg=Black ctermfg=Yellow
highlight CocFloating ctermbg=Black
highlight Pmenu ctermbg=Black ctermfg=Blue
highlight StatusLine ctermfg=Black ctermbg=Gray
highlight StatusLineNC ctermfg=Black ctermbg=Gray
highlight VertSplit ctermfg=Black

set fillchars+=vert:\ 
