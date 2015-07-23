function! s:rewrite_textobj_by(motion_wiseness, func_name)
  let v = operator#user#visual_command_from_wise_name(a:motion_wiseness)
  let Func = function(a:func_name)
  try
    let sel_save     = &l:selection
    let &l:selection = 'inclusive'
    let reg_save     = getreg('z')
    let regtype_save = getregtype('z')
    execute 'normal!' '`[' . v . '`]"zy'
    let src = getreg('z')
    let dst = Func(src)
    call setreg('z', dst)
    execute 'normal!' '`[' . v . '`]"zp'
  finally
    let &l:selection = sel_save
    call setreg('z', reg_save, regtype_save)
  endtry
endfunction

function s:eval_perl(expr)
  return system("perl -e'print eval join(\"\", <>)'", a:expr)
endfunction

function! operator#eval#perl(motion_wiseness)
  call s:rewrite_textobj_by(a:motion_wiseness, 's:eval_perl')
endfunction

function! s:eval_ruby(expr)
  return system("ruby -e'print eval $<.map(&:chomp).join'", a:expr)
endfunction

function! operator#eval#ruby(motion_wiseness)
  call s:rewrite_textobj_by(a:motion_wiseness, 's:eval_ruby')
endfunction
