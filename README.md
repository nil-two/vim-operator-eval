vim-operator-eval
=================

Eval a text object as an expression.

```
" from
(3 + 10) * 5

" to
65
```


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

nil2 <nil2@nil2.org>
