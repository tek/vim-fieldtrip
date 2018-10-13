let g:fieldtrip_defaults = {
      \ 'left': 'H',
      \ 'right': 'L',
      \ 'jump_left': 'h',
      \ 'jump_right': 'l',
      \ 'delete_a': 'd',
      \ 'delete_i': 'x',
      \ 'change': 'c',
      \ }

" neobundle
if exists(':NeoBundleDepends')
  NeoBundleDepends 'AndrewRadev/sideways.vim'
  NeoBundleDepends 'kana/vim-submode'
endif

" plug
if exists(':PlugInstall')
  PlugInstall 'AndrewRadev/sideways.vim'
  PlugInstall 'kana/vim-submode'
endif

" vundle
if exists(':PluginInstall')
  PluginInstall 'AndrewRadev/sideways.vim'
  PluginInstall 'kana/vim-submode'
endif
