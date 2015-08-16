vim-operator-eval
=================

Eval a text as an expression.

Requirements
------------

- [kana/vim-operator-user](https://github.com/kana/vim-operator-user)

Example of `vimrc`
---------

```vim
" operator mappings
" use any one, or be assigned to separate keys.

" eval as VimL
map <silent>se <Plug>(operator-eval-vim)

" eval as Perl5
map <silent>se <Plug>(operator-eval-perl)

" eval as Ruby
map <silent>se <Plug>(operator-eval-ruby)
```

License
-------

MIT License

Author
-------

kusabashira <kusabashira227@gmail.com>
