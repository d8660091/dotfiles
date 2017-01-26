syntax case match

" Twig template built-in tags and parameters (without filter, macro, is and raw, they have special treatment)
syntax keyword twigStatement containedin=twigVarBlock,twigTagBlock,twigNested contained and if else in not or recursive as import

syntax keyword twigStatement containedin=twigVarBlock,twigTagBlock,twigNested contained is filter skipwhite nextgroup=twigFilter
syntax keyword twigStatement containedin=twigTagBlock contained macro skipwhite nextgroup=twigFunction
syntax keyword twigStatement containedin=twigTagBlock contained block skipwhite nextgroup=twigBlockName

" Variable Names
syntax match twigVariable containedin=twigVarBlock,twigTagBlock,twigNested contained skipwhite /[a-zA-Z_][a-zA-Z0-9_]*/
syntax keyword twigSpecial containedin=twigVarBlock,twigTagBlock,twigNested contained false true none loop super caller varargs kwargs

" Filters
syntax match twigOperator "|" containedin=twigVarBlock,twigTagBlock,twigNested contained nextgroup=twigFilter
syntax match twigFilter contained skipwhite /[a-zA-Z_][a-zA-Z0-9_]*/
syntax match twigFunction contained skipwhite /[a-zA-Z_][a-zA-Z0-9_]*/
syntax match twigBlockName contained skipwhite /[a-zA-Z_][a-zA-Z0-9_]*/

" Twig template constants
syntax region twigString containedin=twigVarBlock,twigTagBlock,twigNested contained start=/"/ skip=/\\"/ end=/"/
syntax region twigString containedin=twigVarBlock,twigTagBlock,twigNested contained start=/'/ skip=/\\'/ end=/'/
syntax match twigNumber containedin=twigVarBlock,twigTagBlock,twigNested contained /[0-9]\+\(\.[0-9]\+\)\?/

" Operators
syntax match twigOperator containedin=twigVarBlock,twigTagBlock,twigNested contained /[+\-*\/<>=!,:]/
syntax match twigPunctuation containedin=twigVarBlock,twigTagBlock,twigNested contained /[()\[\]]/
syntax match twigOperator containedin=twigVarBlock,twigTagBlock,twigNested contained /\./ nextgroup=twigAttribute
syntax match twigAttribute contained /[a-zA-Z_][a-zA-Z0-9_]*/

" Twig template tag and variable blocks
syntax region twigNested matchgroup=twigOperator start="(" end=")" transparent display containedin=twigVarBlock,twigTagBlock,twigNested contained
syntax region twigNested matchgroup=twigOperator start="\[" end="\]" transparent display containedin=twigVarBlock,twigTagBlock,twigNested contained
syntax region twigNested matchgroup=twigOperator start="{" end="}" transparent display containedin=twigVarBlock,twigTagBlock,twigNested contained
syntax region twigTagBlock matchgroup=twigTagDelim start=/{%-\?/ end=/-\?%}/ skipwhite containedin=ALLBUT,twigTagBlock,twigVarBlock,twigRaw,twigString,twigNested,twigComment

syntax region twigVarBlock matchgroup=twigVarDelim start=/{{-\?/ end=/-\?}}/ containedin=ALLBUT,twigTagBlock,twigVarBlock,twigRaw,twigString,twigNested,twigComment

" Twig template 'raw' tag
syntax region twigRaw matchgroup=twigRawDelim start="{%\s*raw\s*%}" end="{%\s*endraw\s*%}" containedin=ALLBUT,twigTagBlock,twigVarBlock,twigString,twigComment

" Twig comments
syntax region twigComment matchgroup=twigCommentDelim start="{#" end="#}" containedin=ALLBUT,twigTagBlock,twigVarBlock,twigString

" Block start keywords.  A bit tricker.  We only highlight at the start of a tag block and only if the name is not followed by a comma or equals sign which usually means that we have to deal with an assignment.
syntax match twigStatement containedin=twigTagBlock contained skipwhite /\({%-\?\s*\)\@<=\<[a-zA-Z_][a-zA-Z0-9_]*\>\(\s*[,=]\)\@!/

" and context modifiers
syntax match twigStatement containedin=twigTagBlock contained /\<with\(out\)\?\s\+context\>/ skipwhite

" vim-javascript does not hightlight syntax groups outside jsExpression
" TODO: Add more twig syntax groups
syntax cluster twigInJs contains=twigVarBlock,twigTagBlock

syntax cluster jsExpression add=@twigInJs
syntax region  jsString start=+'+ skip=+\\\('\|$\)+ end=+'\|$+ contains=jsSpecial,@Spell,@twigInJs extend
syntax region  jsString start=+"+ skip=+\\\("\|$\)+ end=+"\|$+ contains=jsSpecial,@Spell,@twigInJs extend

syntax sync fromstart

command -nargs=+ HiLink hi def link <args>

HiLink twigPunctuation twigOperator
HiLink twigAttribute twigVariable
HiLink twigFunction twigFilter

HiLink twigTagDelim twigTagBlock
HiLink twigVarDelim twigVarBlock
HiLink twigCommentDelim twigComment
HiLink twigRawDelim twig

HiLink twigSpecial Special
HiLink twigOperator Normal
HiLink twigRaw Normal
HiLink twigTagBlock PreProc
HiLink twigVarBlock PreProc
HiLink twigStatement Statement
HiLink twigFilter Function
HiLink twigBlockName Function
HiLink twigVariable Identifier
HiLink twigString Constant
HiLink twigNumber Constant
HiLink twigComment Comment

delcommand HiLink
