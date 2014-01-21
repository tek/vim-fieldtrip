if !exists(':SidewaysLeft')
  echom 'fieldtrip: sideways not found.'
  finish
endif

runtime autoload/submode.vim
if !exists('*submode#map')
  echom 'fieldtrip: submode not found.'
  finish
endif

if !exists('g:fieldtrip_start_map')
  echom 'fieldtrip: g:fieldtrip_start_map undefined.'
  finish
endif

call submode#enter_with('fieldtrip', 'n', '', g:fieldtrip_start_map, '<nop>')
call submode#map('fieldtrip', 'n', '', 'h', ':SidewaysLeft<cr>')
call submode#map('fieldtrip', 'n', '', 'l', ':SidewaysRight<cr>')
call submode#map('fieldtrip', 'n', 'rs', 'd', 'd<Plug>SidewaysArgumentTextobjA')
call submode#map('fieldtrip', 'n', 'rs', 'x', 'd<Plug>SidewaysArgumentTextobjI')
call submode#map('fieldtrip', 'n', 'rs', 'c', 'c<Plug>SidewaysArgumentTextobjI')
call submode#map('fieldtrip', 'n', 'r', 'w', 'w')
call submode#map('fieldtrip', 'n', 'r', 'W', 'W')
call submode#map('fieldtrip', 'n', 'r', 'b', 'b')
call submode#map('fieldtrip', 'n', 'r', 'B', 'B')
call submode#map('fieldtrip', 'n', 'r', 'u', 'u')
