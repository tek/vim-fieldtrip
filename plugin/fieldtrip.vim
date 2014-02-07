let g:fieldtrip_defaults = {
      \ 'left': 'H',
      \ 'right': 'L',
      \ 'jump_left': 'h',
      \ 'jump_right': 'l',
      \ 'delete_a': 'd',
      \ 'delete_i': 'x',
      \ 'change': 'c',
      \ }

if exists(':NeoBundleDepends')
  NeoBundleDepends 'AndrewRadev/sideways.vim'
  NeoBundleDepends 'kana/vim-submode'
endif
