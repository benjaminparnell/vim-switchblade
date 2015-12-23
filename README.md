vim-switchblade
===============

Built on top of [syntastic](https://github.com/scrooloose/syntastic),
vim-switchblade works out if you have any javascript linter config files in
your working directory and turns those linters on in syntastic.

This is very much an experiment. Don't hurt me.

Installation
============

Use your favorite plugin manager.

- [vim-plug](https://github.com/junegunn/vim-plug)
  1. Add `Plug 'benjaminparnell/vim-switchblade'` to .vimrc
  2. Run `:PlugInstall`

Default Linter
==============

Set your syntastic linter as normal, this will be used when no javascript linter config is detected by this plugin.

e.g. with vim-plug:

```
let g:syntastic_javascript_checkers = ['standard']
Plug 'benjaminparnell/vim-switchblade'
```

License
-------

MIT
