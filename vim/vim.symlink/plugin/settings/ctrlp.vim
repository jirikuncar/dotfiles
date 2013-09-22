let g:ctrlp_map = '<C-P>'
let g:ctrlp_cmd = 'CtrlP'
imap <C-p> <esc>:CtrlP<cr>

let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_open_new_file = 't'
let g:ctrlp_switch_buffer = 't'

if has("gui_macvim")
  " Open ctrlp with cmd+p
  let g:ctrlp_map = '<D-p>'
  imap <D-p> <esc>:CtrlP<cr>

  " Open goto symbol on current buffer
  nmap <D-r> :CtrlPTag<cr>
  imap <D-r> <esc>:CtrlPTag<cr>

  " Open goto symbol on all buffers
  nmap <D-R> :CtrlPBufTagAll<cr>
  imap <D-R> <esc>:CtrlPBufTagAll<cr>

  " Open goto file
  " nmap <D-t> :CtrlP<cr>
  " imap <D-t> <esc>:CtrlP<cr>

endif
