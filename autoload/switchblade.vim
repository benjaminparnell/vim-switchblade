let switchblade#linters = [
\ [[".jscsrc"], "jscs"],
\ [[".jshintrc"], "jshint"],
\ [[".eslintrc"], "eslint"]
\]

function! switchblade#initialize(root)
  let checkers = map(copy(g:switchblade#linters), 's:check(v:val)')
  let g:syntastic_javascript_checkers = checkers
endfunction

function! s:check(checker)
  let config_exists = filter(copy(a:checker[0]), 'filereadable(v:val)')

  if len(config_exists) > 0
    return a:checker[1]
  endif
endfunction
