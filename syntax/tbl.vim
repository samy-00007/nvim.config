syn keyword tblBuiltins macro endmacro
syn match tblComment display "^//.*$"
syn keyword tblAttrs lockable OSZ16 OSZ32 OSZ64 b_suffix not16 not32 not64 mode16 mode32 mode64 not_OSZ16 not_OSZ32 not_OSZ64 vex evex L128 L256 LIG W0 W1 WIG NP ring0 protected_only
syn match tblOps "[|:]"
syntax match tblDecNumber display   "\v<\d%(_?\d)*%(\.\.@!)?%(\d%(_?\d)*)?%([eE][+-]?\d%(_?\d)*)?"
syntax match tblHexNumber display "\v<0x\x%(_?\x)*%(\.\.@!)?%(\x%(_?\x)*)?%([pP][+-]?\d%(_?\d)*)?"

hi default link tblBuiltins Keyword
hi default link tblAttrs Type
hi default link tblComment Comment
hi default link tblOps Operator
hi default link tblDecNumber Number
hi default link tblHexNumber Number
