
" check whether this script is already loaded
if exists("g:loaded_mergetool")
  finish
endif
let g:loaded_mergetool = 1

let g:mergetool_in_merge_mode = 0

" Commands and <plug> mappings for mergetool state. Additional commands
" available during merging.
command! -nargs=0 MergetoolStart call mergetool#start()
command! -nargs=0 MergetoolToggle call mergetool#toggle()

nnoremap <silent> <Plug>(MergetoolToggle) :<C-u>call mergetool#toggle()<CR>



" <Plug> mappings for diff exchange commands. These can be used outside of
" merging (in any diff windows).
nnoremap <silent> <Plug>(MergetoolDiffExchangeLeft) :<C-u>call mergetool#DiffExchange('h')<CR>
nnoremap <silent> <Plug>(MergetoolDiffExchangeRight) :<C-u>call mergetool#DiffExchange('l')<CR>
nnoremap <silent> <Plug>(MergetoolDiffExchangeDown) :<C-u>call mergetool#DiffExchange('j')<CR>
nnoremap <silent> <Plug>(MergetoolDiffExchangeUp) :<C-u>call mergetool#DiffExchange('k')<CR>

" }}}
