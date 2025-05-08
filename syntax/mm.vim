syn keyword mmBuiltins axiom theorem syntax type by proof premises let be


syn region mmBlock start="\[" end="\]" transparent fold
syn match mmFunc display "[a-zA-Z_][a-zA-Z0-9-_]*\["he=e-1
syn match mmIdent display "[a-zA-Z_][a-zA-Z0-9-_]*[[a-zA-Z0-9-]\@!"
syn match mmComment display "//.*$"

hi default link mmBuiltins Keyword
hi default link mmFunc Function
hi default link mmIdent Type
hi default link mmComment Comment
