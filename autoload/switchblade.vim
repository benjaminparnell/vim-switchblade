let switchblade#linters = [
\ [[".jscsrc"], "jscs"],
\ [[".jshintrc"], "jshint"],
\ [[".eslintrc"], "eslint"]
\]

function! switchblade#initialize(root)
  let checkers = []
  for checker in map(copy(g:switchblade#linters), 's:check(v:val)')
    if type(checker)
      call add(checkers, checker)
    endif
  endfor
  if len(checkers)
    let g:syntastic_javascript_checkers = checkers
    let g:neomake_javascript_enabled_makers = checkers
  endif
endfunction

function! s:check(checker)
  let config_exists = filter(copy(a:checker[0]), 'filereadable(v:val)')

  if len(config_exists) > 0
    return a:checker[1]
  endif
endfunction
