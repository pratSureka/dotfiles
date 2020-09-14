if exists('g:vscode')
    " Easy tab motion in VScode
    nmap <Tab> :Tabnext<CR>
    nmap <S-Tab> :Tabprev<CR>
else
    " Easy tab motion
    nmap <Tab> :tabn<CR>
    nmap <S-Tab> :tabp<CR>

    map <silent><Leader>s :Startify<CR>
    map <silent><Leader>a :Autoformat<CR>

    "Vim-plug

    nnoremap <silent><leader>pi :PlugInstall<CR>
    nnoremap <silent><leader>pc :PlugClean<CR>
    nnoremap <silent><leader>pu :PlugUpdate<CR>
    nnoremap <silent><leader>ps :PlugStatus<CR>

    "Vista
    map <silent><Leader>vt :Vista!!<CR>
    map <silent><leader>vf :Vista finder<CR>

    " Vim-Which-Key
    nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>

    "Vim-lsp
    nnoremap <silent><leader>cn :LspNextDiagnostic<CR>
    nnoremap <silent><leader>cp :LspPreviousDiagnostic<CR>
    nnoremap <silent><leader>cr :LspRename<CR>
    nnoremap <silent><leader>ch :LspHover<CR>

    "Completion(Deoplete)
    inoremap <expr> <M-j> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <M-k> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    inoremap <expr> <tab> pumvisible() ? "\<C-y>" : "\<cr>"

endif

" Easy write and quit
map <silent><leader>w :w<CR>
map <silent><leader>q :q<CR>
map <silent><leader>wq :wq<CR>

"Quick command
map <leader>; :

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Easy Motion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)
map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader><Leader>h <Plug>(easymotion-linebackward)
