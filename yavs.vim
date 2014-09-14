"====[ set some basic stuff ]==================================================
set nowrap
set number
colorscheme pablo
filetype plugin on
set csto=1
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]
set laststatus=2
set tabstop=4
set shiftwidth=4
set expandtab
set cindent
set makeprg=make\ --directory=$YAVS_PROJ_DIR
"set background=light

"====[ cscope $ ctag ]========================================================
cscope add $CSCOPE_DB
set tags+=$YAVS_PROJ_DIR/tags

"====[ some variables ]=======================================================
let c_syntax_for_h = 1
let c_C94 = 1
let c_C99_warn = 1
let c_cpp_warn = 1
let c_warn_8bitchars = 1
let c_warn_multichar = 1
let c_warn_digraph = 1
let c_warn_trigraph = 1
let c_no_octal = 1

"====[ it's always better to know that it is insert mode ]===================
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

"====[ restore previous session if it exists ]================================
syntax on
if filereadable("./Session.vim")
    source Session.vim
endif

"====[ Damian Conway's Make the 81st column stand out ]=======================
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

"====[ Damian Conway's shady characters ]=====================================
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

