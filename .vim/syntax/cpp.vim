" Highlight Class and Function names
syn match    cCustomParen    "?=(" contains=cParen,cCppParen
syn match    cCustomFunc     "\w\+\s*(\@=" contains=cCustomParen
syn keyword  cppIO           cin cout endl
syn match    cCustomScope    "::"
syn match    cCustomClass    "\w\+\s*::" contains=cCustomScope
hi def cCustomFunc  gui=bold guifg=yellowgreen
hi def cppIO  gui=bold guifg=yellowgreen
hi def link cCustomClass Function

