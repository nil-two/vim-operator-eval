function! operator#eval#perl(motion_wiseness)
  if a:motion_wiseness == 'char'
    try
      let sel_save     = &l:selection
      let &l:selection = 'inclusive'
      let reg_save     = getreg('z')
      let regtype_save = getregtype('z')
      silent normal `[v`]"zy
      let src = getreg('z')
      let dst = system("perl -pe'$_ = eval $_'", src)
      call setreg('z', dst)
      silent normal! gv"zp
    finally
      let &l:selection = sel_save
      call setreg('z', reg_save, regtype_save)
    endtry
  else
    '[,']!perl -ple'$_ = eval $_'
  endif
endfunction
