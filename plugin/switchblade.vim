if exists("g:loaded_switchblade") || &cp || v:version < 700 | finish | endif
let g:loaded_switchblade = 1

function! s:detect(dir)
  let dir = a:dir

  let is_node = 0
  let is_node = is_node || filereadable(dir . "/package.json")
  let is_node = is_node || isdirectory(dir . "/node_modules")
  if is_node | return switchblade#initialize(dir) | endif
endfunction

call s:detect(getcwd())
