" Open a new tab and search for something
map <leader>a :tab split<CR>:Ack ""<left>

" Open a new tab for search for the word under the cursor
map <leader>A :tab split<CR>:Ack <C-r><C-w><CR>
