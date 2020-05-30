call plug#begin()
Plug 'luochen1990/rainbow'
"Plug '/rainbow'
call plug#end()

" clojure rainbow parens
let g:rainbow_active = 1
"let g:rainbow_conf = {
"      \  'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
"      \  'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
"      \  'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
"      \  'separately': {
"      \      '*': 0,
"      \      'clojure': {},
"      \  }
"      \}

" a few extra mappings for fireplace
" evaluate top level form
au BufEnter *.clj nnoremap <buffer> cpt :Eval<CR>
" show last evaluation in temp file
au BufEnter *.clj nnoremap <buffer> cpl :Last<CR>

let g:ale_linters = {'clojure': ['clj-kondo']}


execute pathogen#infect()
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone

"inoremap <S-TAB> <C-X><C-O>
inoremap <C-P> <C-X><C-O>


set t_Co=256
set expandtab
set sts=2
set ts=2
set sw=2
set backspace=2
"set number

colorscheme jellybeans
syntax on

" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

" Enable integration with airline.
"let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_highlighting_cache = 1
"let g:bufferline_echo = 0

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


