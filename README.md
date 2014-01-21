## Description

**fieldtrip** is a combination of the plugins [submode][1] and [sideways][2].

By pressing `fieldtrip_start_map`, vim enters a sideways submode. `h` and `l`
are then temporarily mapped to `:SidewaysLeft` and `:SidewaysRight`, h and l
will cycle through the fields.
`d` will delete the motion `<Plug>SidewaysArgumentTextobjA`, `x` deletes the
"inner" variant `<Plug>SidewaysArgumentTextobjI`.  By default, `<esc>` exits
the submode. Consult the submode doc for more options, especially for
preventing the automatic exit after `'timeout'` ms of idling.

## Customization

Change `g:fieldtrip_start_map` to the key sequence you want to use to enter the
submode.

Read the help file for the variable names used to map the submode actions.

## License

Copyright (c) Torsten Schmits. Distributed under the terms of the [MIT
License][3].

[1]: http://github.com/kana/vim-submode 'submode github repo'
[2]: http://github.com/AndrewRadev/sideways.vim 'sideways github repo'
[3]: http://opensource.org/licenses/MIT 'mit license'
