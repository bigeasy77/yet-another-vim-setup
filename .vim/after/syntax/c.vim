highlight cComment ctermfg=DarkGrey guifg=DarkGrey

    " Highlight Class and Function names
    syn match    cCustomParen    "(" contains=cParen,cCppParen
    syn match    cCustomFunc     "\w\+\s*(" contains=cCustomParen
    "syn match    cCustomScope    "::"
    "syn match    cCustomClass    "\w\+\s*::" contains=cCustomScope
    
    
    highlight def cCustomFunc  ctermfg=lightred guifg=lightred
    "highlight def cCustomClass  ctermfg=blue guifg=blue

    
