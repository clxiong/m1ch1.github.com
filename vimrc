" Save this file to ~/.vimrc
"
set autoindent      " take indent from the previous line
set expandtab       " use spaces when <tab> is inserted
set softtabstop=2   " number of spaces inserted by <tab>
set shiftwidth=2    " number of spaces to use for indent
set ruler           " show cursor line and column in the status line
"set number          " show line number
syntax on           " highlight syntax
set showmatch       " show matching parenthesis
set makeprg=gmake   " use gmake for compilation
set tags=~/.tags
"#autocommand FileType java set tags=~/.tags

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE
highlight DiffAdd term=reverse cterm=bold ctermbg=gray ctermfg=black
highlight DiffChange term=bold cterm=NONE ctermbg=NONE ctermfg=black
highlight DiffText term=reverse cterm=bold ctermbg=LightCyan ctermfg=black
highlight DiffDelete term=reverse cterm=bold ctermbg=gray ctermfg=black

let NERDTreeIgnore=['CVS', '\.o', '\.d', '\.class']

map <C-H> :NERDTreeToggle<CR>
map <C-N> :bn<CR>
map <C-P> :bp<CR>
" Black                                            
" DarkBlue                                        
" DarkGreen                                       
" DarkCyan                                        
" DarkRed                                         
" DarkMagenta                                     
" Brown, DarkYellow                               
" LightGray, LightGrey, Gray, Grey                 
" DarkGray, DarkGrey                               
" Blue, LightBlue                                  
" Green, LightGreen                                  
" Cyan, LightCyan                                    
" Red, LightRed                                            
" Magenta, LightMagenta                                    
" Yellow, LightYellow                                        
" White                                                       

map <C-I> :1,$!xmllint --format -<CR>
imap jk <Esc>

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" Highlight lines over 80 characters.
:au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

" Highlight trailing spaces
highlight ExtraWhitespace ctermbg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

" Pathogen stuff
call pathogen#infect()
