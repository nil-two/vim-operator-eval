if exists('g:loaded_operator_eval')
  finish
endif
let g:loaded_operator_eval = 1

call operator#user#define('eval-vim', 'operator#eval#vim')
call operator#user#define('eval-perl', 'operator#eval#perl')
call operator#user#define('eval-ruby', 'operator#eval#ruby')
