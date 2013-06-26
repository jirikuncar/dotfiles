" Open/Hide NerdTree
autocmd VimEnter * nmap <F3> :NERDTreeToggle<CR>
autocmd VimEnter * imap <F3> <Esc>:NERDTreeToggle<CR>a

if has('gui_running')
    let NERDTreeQuitOnOpen=0
    let NERDTreeWinSize=35
else
    let NERDTreeQuitOnOpen=1
    let NERDTreeWinSize=35
endif

let NERDTreeMapOpenInTab='<ENTER>'
