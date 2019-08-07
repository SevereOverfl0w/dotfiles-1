if exists('g:juxt_plug_loaded_asyncomplete')
  finish
endif

call juxt#plug#add('prabirshrestha/asyncomplete.vim')

au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'async_clj_omni',
    \ 'whitelist': ['clojure'],
    \ 'completor': function('async_clj_omni#sources#complete'),
    \ })

" https://github.com/prabirshrestha/asyncomplete.vim/issues/117
inoremap <expr> <CR> pumvisible() ? asyncomplete#close_popup() . "\<CR>" : "\<CR>"

let g:asyncomplete_auto_completeopt = 0
