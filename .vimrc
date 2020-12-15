call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
call plug#end()

inoremap kj <Esc>
inoremap Kj <Esc>
inoremap kJ <Esc>
inoremap KJ <Esc>

nnoremap ç :
nnoremap Ç :

set rnu nu
set ts=4 sw=4 et
set nowrap

nnoremap <c-p> :FZF<cr>
nnoremap <c-y> :NERDTreeToggle<cr>

nmap gd <Plug>(coc-definition)
nmap gr <Plug>(coc-references)
inoremap <silent><expr> <c-space> coc#refresh()

highlight CocErrorSign ctermbg=Black
highlight CocErrorSign ctermfg=Red
highlight CocWarningSign ctermbg=Black
highlight CocWarningSign ctermfg=Red
highlight CocInfoSign ctermbg=Black ctermfg=Yellow
highlight CocFloating ctermbg=Black
highlight Pmenu ctermbg=Black ctermfg=Blue
highlight PmenuSel ctermbg=Blue ctermfg=White

set fillchars+=vert:\ 