syn match    cCustomParen    "?=(" contains=cParen,cCppParen
syn match    cCustomFunc     "\w\+\s*(\@=" contains=cCustomParen
syn match    cCustomScope    "::"
syn match    cCustomClass    "\w\+\s*::" contains=cCustomScope
syn match    cFunction '\h\w*\ze\s*('
hi link cFunction Function
hi def cCustomFunc  gui=bold guifg=yellowgreen
hi def link cCustomClass Function
