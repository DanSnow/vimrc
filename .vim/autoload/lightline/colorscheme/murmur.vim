" Color palette
let s:bg    = ['#5F5F5F', 237]  " Background for branch and file format blocks
let s:fg    = ['#AFAF87', 144]  " Foreground for branch and file format blocks

let s:bg2   = ['#1C1C1C', 234]  " Background for middle block
let s:fg2   = ['#F5F5F5', 39]   " Foreground for middle block

let s:normal_bg  = ['#5F87FF', 27]   " Background for normal mode and file position blocks
let s:normal_fg  = ['#FFFFFF', 15]   " Foreground for normal mode and file position blocks

let s:insert_bg  = ['#87AF5F', 70]   " Background for insert mode and file position blocks
let s:insert_fg  = ['#FFFFFF', 15]   " Foreground for insert mode and file position blocks

let s:visual_bg  = ['#ff8c00', 166]  " Background for visual mode and file position blocks
let s:visual_fg  = ['#FFFFFF', 15]   " Foreground for visual mode and file position blocks

let s:replace_bg = ['#870000', 88]   " Background for replace mode and file position blocks
let s:replace_fg = ['#FFFFFF', 15]   " Foreground for replace mode and file position blocks

let s:inactive_bg = ['#1C1C1C', 234] " Background for inactive mode
let s:inactive_fg = ['#4E4E4E', 239] " Foreground for inactive mode

let s:alert = ['#870000', 88]   " Modified file alert color
let s:yellow = ['#e5c07b', 180]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [ [ s:normal_bg, s:normal_fg, 'bold' ], [ s:bg, s:fg ] ]
let s:p.normal.middle   = [ [ s:bg2, s:fg2 ] ]
let s:p.inactive.left   = [ [ s:inactive_bg,  s:inactive_fg ], [ s:inactive_bg, s:inactive_fg ] ]
let s:p.inactive.middle   = [ [ s:inactive_bg,  s:inactive_fg ] ]
let s:p.inactive.right   = [ [ s:inactive_bg,  s:inactive_fg ], [ s:inactive_bg, s:inactive_fg ] ]
let s:p.insert.left     = [ [ s:insert_bg, s:insert_fg, 'bold' ], [ s:bg, s:fg ] ]
let s:p.replace.left    = [ [ s:replace_bg, s:replace_fg, 'bold' ], [ s:bg, s:fg ] ]
let s:p.visual.left     = [ [ s:visual_bg, s:visual_fg, 'bold' ], [ s:bg, s:fg ] ]
let s:p.insert.right     = [ [ s:insert_bg, s:insert_fg, 'bold' ], [ s:bg, s:fg ] ]
let s:p.replace.right    = [ [ s:replace_bg, s:replace_fg, 'bold' ], [ s:bg, s:fg ] ]
let s:p.visual.right     = [ [ s:visual_bg, s:visual_fg, 'bold' ], [ s:bg, s:fg ] ]

let s:p.tabline.left   = [ [ s:bg2, s:fg2 ] ]
let s:p.tabline.tabsel = [ [ s:bg, s:fg, 'bold' ] ]
let s:p.tabline.middle = [ [ s:inactive_bg, s:inactive_fg ] ]
let s:p.tabline.right  = copy(s:p.normal.right)

let s:p.normal.error   = [ [ s:alert,   s:bg ] ]
let s:p.normal.warning = [ [ s:yellow, s:bg ] ]

let g:lightline#colorscheme#murmur#palette = lightline#colorscheme#flatten(s:p)
