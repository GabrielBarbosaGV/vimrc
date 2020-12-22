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

function! CallFuncAndRestoreRegister(func, ...)
    let previousInRegister = @@

    call call(a:func, a:000)
    
    let @@ = previousInRegister
endfunction

function! MoveLineUpWithoutPreservingRegister()
    normal! ddkP
endfunction

function! MoveLineDownWithoutPreservingRegister()
    normal! ddp
endfunction

function! MoveLineUp()
    call CallFuncAndRestoreRegister('MoveLineUpWithoutPreservingRegister')
endfunction

function! MoveLineDown()
    call CallFuncAndRestoreRegister('MoveLineDownWithoutPreservingRegister')
endfunction

nnoremap <leader>k :call MoveLineUp()<cr>
nnoremap <leader>j :call MoveLineDown()<cr>


" <Highlighting>
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

highlight LineNr ctermfg=Gray

highlight JavaStorageClass ctermfg=Darkblue
highlight JavaStatement ctermfg=Darkblue
highlight Repeat ctermfg=Darkblue
highlight Typedef ctermfg=Darkblue
highlight JavaType ctermfg=Darkblue
highlight Exception ctermfg=Darkblue
highlight String ctermfg=111
highlight Constant ctermfg=111
highlight Branch ctermfg=Darkblue
highlight Conditional ctermfg=Darkblue
highlight Operator ctermfg=Darkblue
highlight Include ctermfg=Darkblue
highlight Type ctermfg=159
" </Highlighting>

set fillchars+=vert:\ 
