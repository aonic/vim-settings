filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ~/.vimrc                                                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                               "
" Version: 0.1                                                  "
"                                                               "
"                                                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
" Hightlight the ifs and buts
syntax on
 
" Plugins and indentation based on the file type
filetype plugin indent on
 
 
" Don't remember source of this, i think it was already in my .vimrc
" Tell vim to remember certain things when we exit
"  '10 : marks will be remembered for up to 10 previously edited files
"  "100 : will save up to 100 lines for each register
"  :5000 : up to 5000 lines of command-line history will be remembered
"  % : saves and restores the buffer list
"  n... : where to save the viminfo files
set viminfo='10,\"100,:5000,%,n~/.viminfo
 
" omnicomplete from: http://vim.wikia.com/wiki/VimTip1386
"set completeopt=longest,menuone
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
"  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

map <leader>N :NERDTreeToggle<CR>
map <leader>T :TlistToggle<CR>
nmap <leader>a <Esc>:Ack!

"###########################
"##       PHP             ##
"###########################
" The php doc plugin
source ~/.vim/bundle/php-doc/plugin/php-doc.vim
"source gnome-doc.vim
map <C-P> :exe PhpDoc()<CR>
"inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
"nnoremap <C-P> :call PhpDocSingle()<CR>
"vnoremap <C-P> :call PhpDocRange()<CR>
 
" run file with PHP CLI (CTRL-M)
":autocmd FileType php noremap <C-M> :w!<CR>:!/usr/bin/php %<CR>
 
" PHP parser check (CTRL-L)
:autocmd FileType php noremap <C-L> :!/usr/bin/php -l %<CR>
 
" Do use the currently active spell checking for completion though!
" (I love this feature :-)
set complete+=kspell
 
" disable tabs
"set expandtab
"set shiftwidth=4
"set softtabstop=4
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set noexpandtab
 
" highlt matches
set hlsearch
 
" Taken from http://peterodding.com/code/vim/profile/vimrc
" Make Vim open and close folded text as needed because I can't be bothered to
" do so myself and wouldn't use text folding at all if it wasn't automatic.
 
" Enable enhanced command line completion.
set wildmenu wildmode=list:full
 
" Ignore these filenames during enhanced command line completion.
set wildignore+=*.aux,*.out,*.toc " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif " binary images
set wildignore+=*.luac " Lua byte code
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.pyc " Python byte code
set wildignore+=*.spl " compiled spelling word lists
set wildignore+=*.sw? " Vim swap files
 
 
" Enable completion dictionaries for PHP buffers.
"autocmd FileType php set complete+=k~/.vim/dict/PHP.dict
 
" PHP Autocomplete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview


" You might also find this useful
" PHP Generated Code Highlights (HTML & SQL)                                              
let php_sql_query=1
let php_htmlInStrings=1

