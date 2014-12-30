" Highlight Class and Function names
syn match    cCustomParen    "?=(" contains=cParen,cCppParen
syn match    cCustomFunc     "\w\+\s*(\@=" contains=cCustomParen
syn match    cCustomScope    "::"
syn match    cCustomClass    "\w\+\s*::" contains=cCustomScope
syn keyword cLogic and
syn keyword cLogic or
syn keyword cLogic not
hi def cCustomFunc  gui=bold guifg=yellowgreen
hi def link cCustomClass Function
hi def link cLogic Keyword
