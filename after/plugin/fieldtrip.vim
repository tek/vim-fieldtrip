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

for [key, value] in items(g:fieldtrip_defaults)
  let g:fieldtrip_{key} = get(g:, 'fieldtrip_'.key, value)
endfor

call submode#enter_with('fieldtrip', 'n', '', g:fieldtrip_start_map, '<nop>')
call submode#map('fieldtrip', 'n', '', g:fieldtrip_left, ':SidewaysLeft<cr>')
call submode#map('fieldtrip', 'n', '', g:fieldtrip_right, ':SidewaysRight<cr>')
call submode#map('fieldtrip', 'n', '', g:fieldtrip_jump_left, ':SidewaysJumpLeft<cr>')
call submode#map('fieldtrip', 'n', '', g:fieldtrip_jump_right, ':SidewaysJumpRight<cr>')
call submode#map('fieldtrip', 'n', 'rs', g:fieldtrip_delete_a, 'd<Plug>SidewaysArgumentTextobjA')
call submode#map('fieldtrip', 'n', 'rs', g:fieldtrip_delete_i, 'd<Plug>SidewaysArgumentTextobjI')
call submode#map('fieldtrip', 'n', 'rs', g:fieldtrip_change, 'c<Plug>SidewaysArgumentTextobjI')
call submode#map('fieldtrip', 'n', 'r', 'w', 'w')
call submode#map('fieldtrip', 'n', 'r', 'W', 'W')
call submode#map('fieldtrip', 'n', 'r', 'b', 'b')
call submode#map('fieldtrip', 'n', 'r', 'B', 'B')
call submode#map('fieldtrip', 'n', 'r', 'u', 'u')
