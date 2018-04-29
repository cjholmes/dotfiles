set number "Show Line Numbers
set incsearch "Searches While Characters Are Entered
set hlsearch "Highlight Matches
set smartindent "Indents 'Smartly'
set wildmenu "Visual Autocomplete for Command Menu
set wrap!
set showmatch "Shows Matching [{()}]

 
execute pathogen#infect()

syntax on "Syntax Processing

"Layout Stuffs
set foldenable "Enable Folding
set foldlevelstart=10 "Opens Most Folds By Default
set foldnestmax=10 "Max Nested Folds
set foldmethod=indent "Folds Based on Indents
nnoremap <space> za

colorscheme monokai " Aesthetics

" All them colors
let g:solarized_termcolors=256
set t_Co=256
set background=dark

"Highlights Columns Over 80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
 
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
 
let g:syntastic_cpp_remove_include_errors = 1

"Kep Binds
"jk is escape
inoremap jk <esc>

