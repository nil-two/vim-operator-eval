function! operator#eval#perl(motion_wiseness)
  '[,']!perl -ple'$_ = eval $_'
endfunction
