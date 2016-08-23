vim-switchblade
===============

vim-switchblade works out if you have any javascript linter config files in
your working directory and cofigures your linter to use them.

Works with:

  * [Syntastic](https://github.com/scrooloose/syntastic)
  * [Neomake](https://github.com/neomake/neomake)

Installation
============

Use your favourite plugin manager.

- [vim-plug](https://github.com/junegunn/vim-plug)
  1. Add `Plug 'benjaminparnell/vim-switchblade'` to .vimrc
  2. Run `:PlugInstall`

Default Linter
==============

Set your  linter as normal, this will be used when no javascript linter config
is detected by this plugin.

e.g. with vim-plug:

Syntasic
--------

```
let g:syntastic_javascript_checkers = ['standard']
Plug 'benjaminparnell/vim-switchblade'
```

Neomake
-------

```
let g:neomake_javascript_enabled_makers = ['standard']
Plug 'benjaminparnell/vim-switchblade'
```

License
=======

MIT
