"----------------------------------------------------------------------------------------------
"------------------------------------ Plugins configuration -----------------------------------
"----------------------------------------------------------------------------------------------

"Sneak 
"-------------------------------------
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

"YouCompleteMe
"-------------------------------------
"nnoremap <silent> <leader>g :YcmCompleter GoTo<CR>

"NerdCommenter
"-------------------------------------
"let g:user_emmet_install_global = 0
autocmd FileType html,edge,css EmmetInstall

" Python-syntax
let g:python_highlight_all = 1

" Vim-Go
"-------------------------------------
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_highlight_types = 1
let g:go_highlight_fields = 0
let g:go_highlight_format_strings = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_structs = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 1

" Coc
"-------------------------------------
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"NerdCommenter
"-------------------------------------
nmap <C-_> <Plug>NERDCommenterToggle <Down>
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

"Marckdown-img-paste
"-------------------------------------
autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
" there are some defaults for image directory and image name, you can change them
" let g:mdip_imgdir = 'img'
" let g:mdip_imgname = 'image'

"Schleep indention
"-------------------------------------
vmap <C-Down> <Plug>SchleppIndentDown
vmap <C-Up> <Plug>SchleppIndentUp
vmap <C-d> <Plug>SchleppDup
let g:Schlepp#allowSquishingLines = 1
let g:Schlepp#allowSquishingBlock = 1
let g:Schlepp#trimWS = 0

" Fuzzy Finder (fzf)
"-------------------------------------
"inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'window': { 'width': 0.2, 'height': 0.9, 'xoffset': 1 }})
:map <silent><C-t> :bw :call fzf#run({'window': { 'width': 0.9, 'height': 0.6 },'down': '40%','sink': 'tabedit', 'options': ['--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']})<CR> 
nnoremap <silent> <Leader>t :call fzf#run({'window': { 'width': 0.9, 'height': 0.6 },'down': '40%','sink': 'tabedit', 'options': ['--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']})<CR>
nnoremap <silent> <Leader>s :call fzf#run({'window': { 'width': 0.9, 'height': 0.6 }, 'down': '40%','sink': 'vertical botright split', 'options': ['--layout=reverse', '--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']})<CR>
nnoremap <silent> <Leader>v :call fzf#run({'window': { 'width': 0.9, 'height':0.6 }, 'down': '40%','sink': 'split', 'options': ['--layout=reverse', '--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']})<CR>
nnoremap <silent> <Leader>o :call fzf#run({'window': { 'width': 0.9, 'height': 0.6 },'down': '40%','sink': 'e', 'options': ['--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']})<CR>
nnoremap <silent> <Leader>c :call fzf#run({'source': map(split(globpath(&rtp, "colors/*.vim"), "\n"),"substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),'sink': 'colo','options': '+m','right':    30})<CR>

function DeleteHiddenBuffers()
    let tpbl=[]
    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
        silent execute 'bwipeout' buf
    endfor
endfunction

" Livedown 
"let g:livedown_autorun = 1
" Open with brave
nnoremap <silent> <Leader>m :call jobstart(printf('livedown start %s --port 4242 --open --browser "brave --profile-directory="Contre" --app=http://localhost:4242"',@%),{'detach':1})<CR>
" Open with Zathura
nnoremap <silent> <Leader>m :call jobstart(printf('livedown start %s --port 4242 --open --browser "brave --profile-directory="Contre" --app=http://localhost:4242"',@%),{'detach':1})<CR>
"let g:livedown_open = 1

" NvimTree
"-------------------------------------
nnoremap <leader>f :tabdo NvimTreeToggle<Enter>
let g:nvim_tree_highlight_opened_files = 1
let g:nvim_tree_width_allow_resize  = 1
let g:nvim_tree_add_trailing = 1
let g:nvim_tree_auto_close = 1
"let g:nvim_tree_tab_open = 1
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ]
                                                     
