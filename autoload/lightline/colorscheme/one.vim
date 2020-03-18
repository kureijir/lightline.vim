" =============================================================================
" Filename: autoload/lightline/colorscheme/one.vim
" Author: Zoltan Dalmadi
" License: MIT License
" Last Change: 2019/09/09 22:42:48.
" =============================================================================

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

if lightline#colorscheme#background() ==# 'light'
  " Light variant
  let s:fg    = [ '#494b53', 239 ]
  let s:bg    = [ '#fafafa', 255 ]
  let s:gray1 = [ '#696c77', 242 ]
  let s:gray2 = [ '#f0f0f0', 254 ]
  let s:gray3 = [ '#d0d0d0', 251 ]
  let s:blue   = [ '#4078f2', 69 ]
  let s:green  = [ '#50a14f', 71 ]
  let s:purple = [ '#a626a4', 127 ]
  let s:red1   = [ '#e45649', 167 ]
  let s:red2   = [ '#ca1243', 161 ]
  let s:yellow = [ '#c18401', 136 ]
else
  " Dark variant
  let s:fg    = [ '#abb2bf', 249 ]
  let s:bg    = [ '#282c34', 236 ]
  let s:gray1 = [ '#828997', 245 ]
  let s:gray2 = [ '#333841', 237 ]
  let s:gray3 = [ '#4b5263', 240 ]
  let s:blue   = [ '#61afef', 75 ]
  let s:green  = [ '#98c379', 108 ]
  let s:purple = [ '#c678dd', 176 ]
  let s:red1   = [ '#e06c75', 168 ]
  let s:red2   = [ '#be5046', 131 ]
  let s:yellow = [ '#e5c07b', 180 ]
endif

" Common
let s:p.inactive.left   = [ [ s:bg,  s:gray3 ], [ s:bg, s:gray3 ] ]
let s:p.inactive.middle = [ [ s:gray3, s:gray2 ] ]
let s:p.inactive.right  = [ [ s:bg, s:gray3 ] ]
let s:p.normal.left    = [ [ s:bg, s:green, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.normal.middle  = [ [ s:fg, s:gray2 ] ]
let s:p.normal.right   = [ [ s:bg, s:green, 'bold' ], [ s:gray1, s:gray3 ] ]
let s:p.normal.error   = [ [ s:red2, s:bg ] ]
let s:p.normal.warning = [ [ s:yellow, s:bg ] ]
let s:p.insert.right   = [ [ s:bg, s:blue, 'bold' ], [ s:gray1, s:gray3 ] ]
let s:p.insert.left    = [ [ s:bg, s:blue, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.replace.right  = [ [ s:bg, s:red1, 'bold' ], [ s:gray1, s:gray3 ] ]
let s:p.replace.left   = [ [ s:bg, s:red1, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.visual.right   = [ [ s:bg, s:purple, 'bold' ], [ s:gray1, s:gray3 ] ]
let s:p.visual.left    = [ [ s:bg, s:purple, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.tabline.left   = [ [ s:gray1, s:gray3 ] ]
let s:p.tabline.tabsel = [ [ s:bg, s:purple, 'bold' ] ]
let s:p.tabline.middle = [ [ s:gray3, s:gray2 ] ]
let s:p.tabline.right  = copy(s:p.normal.right)

let g:lightline#colorscheme#one#palette = lightline#colorscheme#flatten(s:p)
