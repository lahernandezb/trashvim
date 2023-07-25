lua << EOF

EOF


" Bind C-/ to vscode commentary since calling from vscode produces double comments due to multiple cursors
" xnoremap <silent> <C-/> :call Comment()<CR>
" nnoremap <silent> <C-/> :call Comment()<CR>

" nnoremap <silent> <C-w>_ :<C-u>call VSCodeNotify('workbench.action.toggleEditorWidths')<CR>

" nnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>
" xnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>