
" functions """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function DefineWorkspace(path, name)
    let args = "*.[ch] *.cpp *.hpp *.hh"
    execute "command! ".a:name." %bdelete | cd ".a:path." | args ".args
    execute "command! ".a:name."ADD cd ".a:path." | args ".args

endfunction

function HeadingFunc()
    let s:line=line(".")
    call setline(s:line,"/*******************************************************************************")
    call append(s:line," *   @brief ")
    call append(s:line+1," *******************************************************************************")
    call append(s:line+2," *   @history @code")
    call append(s:line+3," *   DATE        VERSION    WHO     DESCRIPTION")
    call append(s:line+4," *   ----------  -------    ------  -----------")
    call append(s:line+5," *   ".strftime("%Y-%m-%d")."                     Function created.")
    call append(s:line+6," *   @endcode")
    call append(s:line+7," *******************************************************************************")
    call append(s:line+8," *   @param[in] par1 - ")
    call append(s:line+9," *   @return ")
    call append(s:line+10," *   @info ")
    call append(s:line+11," *******************************************************************************")
    call append(s:line+12," */")
    unlet s:line
endfunction

function HeadingFile()
    let s:line=line(".")
    call setline(s:line,"/*******************************************************************************")
    call append(s:line," *   Copyright ".strftime("%Y")."                         ")
    call append(s:line+1," *   All Rights Reserved.")
    call append(s:line+2," *                                             ")
    call append(s:line+3," *******************************************************************************")
    call append(s:line+4," *   @file ")
    call append(s:line+5," *   @brief ")
    call append(s:line+6," *******************************************************************************")
    call append(s:line+7," *   FILE MODIFICATION HISTORY:")
    call append(s:line+8," *   DATE        VERSION    WHO     DESCRIPTION")
    call append(s:line+9," *   ----------  -------    ------  -----------")
    call append(s:line+10," *   ".strftime("%Y-%m-%d")."                     File created.")
    call append(s:line+11," *******************************************************************************")
    call append(s:line+12," */")
    unlet s:line
endfunction

" working spaces """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" call DefineWorkspace("$YAVS_PROJ_DIR", "PROJ-1")

" change directory """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! Pro cd  $YAVS_PROJ_DIR

" other commands """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! Mks mksession! $YAVS_PROJ_DIR/.vimsession 
command! Lds source $YAVS_PROJ_DIR/.vimsession 

" on start """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if argc() == 0
    e *.cpp *.c
endif

