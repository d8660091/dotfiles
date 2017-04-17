let s:fg       = '#c5c8c6'
let s:fg_1     = '#b1b4b2'
let s:fg_2     = '#9da09e'
let s:fg_3     = '#898c8a'
let s:fg_4     = '#767876'
let s:bg       = '#1d1f21'
let s:black    = '#373b41'
let s:black_1  = '#282a2e'
let s:grey     = '#5a616a'
let s:grey_1   = '#484e55'
let s:grey_2   = '#40464C'
let s:red      = '#cc6666'
let s:red_1    = '#a54242'
let s:red_2    = '#843434' 
let s:green    = '#b5bd68'
let s:green_1  = '#8c9440'
let s:yellow   = '#f0c674'
let s:yellow_1 = '#de935f'
let s:blue     = '#81a2be'
let s:blue_1   = '#5f819d'
let s:blue_2   = '#425a6d'
let s:blue_3   = '#344857'
let s:purple   = '#b294bb'
let s:purple_1 = '#85678f'
let s:cyan     = '#8abeb7'
let s:cyan_1   = '#5e8d87'
let s:NONE     = 'NONE'

exec 'hi '.'Comment'         .' guifg='.s:fg_2     .' guibg='.s:NONE
exec 'hi '.'Constant'        .' guifg='.s:red      .' guibg='.s:NONE
exec 'hi '.'Cursor'          .' guifg='.s:NONE     .' guibg='.s:fg
exec 'hi '.'CursorLine'      .' guifg='.s:NONE     .' guibg='.s:NONE    .' gui=NONE' .' cterm=NONE'
exec 'hi '.'CursorLineNR'    .' guifg='.s:fg_1
exec 'hi '.'Delimiter'       .' guifg='.s:fg_2     .' guibg='.s:NONE
exec 'hi '.'Directory'       .' guifg='.s:fg_2     .' guibg='.s:NONE
exec 'hi '.'EndOfBuffer'     .' guifg='.s:black    .' guibg='.s:NONE
exec 'hi '.'ErrorMsg'        .' guifg='.s:fg       .' guibg='.s:red_1
exec 'hi '.'Folded'          .' guifg='.s:fg_1     .' guibg='.s:grey_2
exec 'hi '.'Function'        .' guifg='.s:yellow   .' guibg='.s:NONE
exec 'hi '.'Identifier'      .' guifg='.s:purple   .' guibg='.s:NONE
exec 'hi '.'LineNr'          .' guifg='.s:fg_4     .' guibg='.s:bg
exec 'hi '.'MatchParen'      .' guifg='.s:fg       .' guibg='.s:grey
exec 'hi '.'Normal'          .' guifg='.s:fg       .' guibg='.s:bg
exec 'hi '.'Operator'        .' guifg='.s:yellow   .' guibg='.s:NONE
exec 'hi '.'Pmenu'           .' guifg='.s:fg_1     .' guibg='.s:grey
exec 'hi '.'PmenuSel'        .' guifg='.s:black    .' guibg='.s:blue    .' gui=bold'
exec 'hi '.'PreProc'         .' guifg='.s:blue     .' guibg='.s:NONE
exec 'hi '.'Search'          .' guifg='.s:fg       .' guibg='.s:red_2
exec 'hi '.'Special'         .' guifg='.s:green    .' guibg='.s:NONE
exec 'hi '.'SpecialKey'      .' guifg='.s:cyan_1   .' guibg='.s:NONE
exec 'hi '.'StartifyPath'    .' guifg='.s:fg       .' guibg='.s:NONE
exec 'hi '.'Statement'       .' guifg='.s:blue_1   .' guibg='.s:NONE
exec 'hi '.'StatusLine'      .' guifg='.s:fg_1     .' guibg='.s:black   .' gui=bold'
exec 'hi '.'StatusLineNC'    .' guifg='.s:black_1  .' guibg='.s:fg_3
exec 'hi '.'String'          .' guifg='.s:green    .' guibg='.s:NONE
exec 'hi '.'StringDelimiter' .' guifg='.s:green_1  .' guibg='.s:NONE
exec 'hi '.'Structure'       .' guifg='.s:cyan_1   .' guibg='.s:NONE
exec 'hi '.'Title'           .' guifg='.s:fg_2     .' guibg='.s:NONE    .' gui=bold'
exec 'hi '.'Todo'            .' guifg='.s:fg       .' guibg='.s:NONE    .' gui=bold'
exec 'hi '.'Type'            .' guifg='.s:yellow_1 .' guibg='.s:NONE
exec 'hi '.'VertSplit'       .' guifg='.s:fg_3     .' guibg='.s:NONE    .' gui=NONE'
exec 'hi '.'Visual'          .' guifg='.s:NONE     .' guibg='.s:black
exec 'hi '.'DiffAdd'         .' guifg='.s:bg       .' guibg='.s:green
exec 'hi '.'DiffDelete'      .' guifg='.s:bg       .' guibg='.s:red
exec 'hi '.'DiffChange'      .' guifg='.s:bg       .' guibg='.s:yellow
exec 'hi '.'DiffText'        .' guifg='.s:bg       .' guibg='.s:yellow  .' gui=bold'
exec 'hi '.'FoldColumn'      .' guifg='.s:fg       .' guibg='.s:black
exec 'hi '.'TabLine'         .' guifg='.s:fg_3     .' guibg='.s:black_1 .' gui=NONE'
exec 'hi '.'TabLineSel'      .' guifg='.s:fg       .' guibg='.s:black_1 .' gui=bold'
exec 'hi '.'TabLineFill'     .' guifg='.s:black_1  .' guibg='.s:blue
