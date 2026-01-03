syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set guifont=Iosevka\ 20
set guioptions-=m
set guioptions-=T
set relativenumber
set number
set ignorecase
set smartcase
set incsearch
set cinoptions=l1
set modeline
set iminsert=0
set imsearch=0
set autoindent
set autochdir

autocmd BufEnter * if &filetype == "go" | setlocal noexpandtab
autocmd BufNewFile,BufRead ?\+.c3 setf c

map gf :e <cfile><CR>
map <leader>D :execute 'normal! a' . strftime('(%Y-%m-%d %H:%M:%S)')<CR>


" --- FORCE TRUE COLOR ---
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set background=light
syntax on

" --- DEFINITIONS (Light Green + BOLD) ---
" Added gui=bold cterm=bold to make these stand out
highlight PreProc      guifg=#00b300 gui=bold cterm=bold ctermfg=46
highlight Include      guifg=#00b300 gui=bold cterm=bold ctermfg=46
highlight Define       guifg=#00b300 gui=bold cterm=bold ctermfg=46
highlight Structure    guifg=#00b300 gui=bold cterm=bold ctermfg=46
highlight Typedef      guifg=#00b300 gui=bold cterm=bold ctermfg=46
highlight Macro        guifg=#00b300 gui=bold cterm=bold ctermfg=46

" --- LOGIC & TYPES (Dark Blue + BOLD) ---
" Added gui=bold cterm=bold to make 'int', 'if', 'return' thick
highlight Type         guifg=#00008B gui=bold cterm=bold ctermfg=18
highlight StorageClass guifg=#00008B gui=bold cterm=bold ctermfg=18
highlight Conditional  guifg=#00008B gui=bold cterm=bold ctermfg=18
highlight Repeat       guifg=#00008B gui=bold cterm=bold ctermfg=18
highlight Statement    guifg=#00008B gui=bold cterm=bold ctermfg=18
highlight Keyword      guifg=#00008B gui=bold cterm=bold ctermfg=18
highlight Boolean      guifg=#00008B gui=bold cterm=bold ctermfg=18

" --- NUMBERS (Dark Blue - Normal Weight) ---
" Kept normal weight for numbers to differentiate from keywords
highlight Number       guifg=#00008B gui=none cterm=none ctermfg=18
highlight Float        guifg=#00008B gui=none cterm=none ctermfg=18

" --- TEXT & STRINGS (Black) ---
highlight Normal       guifg=#000000 guibg=#ffffff gui=none cterm=none ctermfg=Black ctermbg=White
highlight String       guifg=#000000 gui=none cterm=none ctermfg=Black
highlight Identifier   guifg=#000000 gui=none cterm=none ctermfg=Black
highlight Function     guifg=#000000 gui=none cterm=none ctermfg=Black
highlight Operator     guifg=#000000 gui=none cterm=none ctermfg=Black
highlight Delimiter    guifg=#000000 gui=none cterm=none ctermfg=Black

" --- COMMENTS (Grey) ---
highlight Comment      guifg=#808080 gui=italic cterm=italic ctermfg=244

" --- C++ LINKS ---
highlight link cppStatement Statement
highlight link cppType Type
highlight link cppStructure Structure
highlight link cppNumber Number
highlight link cppBoolean Boolean
