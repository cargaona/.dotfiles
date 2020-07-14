"                              ___           ___           ___
"     ___        ___          /__/\         /  /\         /  /\
"    /__/\      /  /\        |  |::\       /  /::\       /  /:/
"    \  \:\    /  /:/        |  |:|:\     /  /:/\:\     /  /:/
"     \  \:\  /__/::\      __|__|:|\:\   /  /:/~/:/    /  /:/  ___
" ___  \__\:\ \__\/\:\__  /__/::::| \:\ /__/:/ /:/___ /__/:/  /  /\
"/__/\ |  |:|    \  \:\/\ \  \:\~~\__\/ \  \:\/:::::/ \  \:\ /  /:/
"\  \:\|  |:|     \__\::/  \  \:\        \  \::/~~~~   \  \:\  /:/
" \  \:\__|:|     /__/:/    \  \:\        \  \:\        \  \:\/:/
"  \__\::::/      \__\/      \  \:\        \  \:\        \  \::/
"      ~~~~                   \__\/         \__\/         \__\/

"----------------------------------------------------------------------------------------------
"------------------------------------ Custom key bindings -------------------------------------
"----------------------------------------------------------------------------------------------

"Move lines with Ctrl+arrow
"-------------------------------------
inoremap <C-Down> <Esc>:m+<CR>
noremap <C-Up> <Esc>:m-2<CR>
nnoremap <C-Down> :m+<CR>
nnoremap <C-Up> :m-2<CR>

" Scroll like normal ide with Shift + Arrows
map <S-A-Down> <C-E><C-E>
map <S-A-Up> <C-Y><C-Y>

"Copy current line with Ctrl+d
"-------------------------------------
nmap <C-d> mzyyp`z
"Copy current line to clipboard
"-------------------------------------
vmap <C-C> "+y
vmap <C-X> "+x

"Shift selection
"-------------------------------------
imap <S-Right> <Esc>V<Right>
imap <S-Left> <Esc>V<Left>
imap <S-Down> <Esc>V<Down>
nmap <S-Right> v<Right>
vmap <S-Right> <Right>
nmap <S-Down> V<Down>
nmap <S-Left> v<Left>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
nmap <S-Up> V<Up>
vmap <S-Up> <Up>
nnoremap <C-S-Right> <Esc>v
nnoremap <C-S-Left> <Esc>v
nnoremap <C-S-Down> <Esc>v
nnoremap <C-S-Up> <Esc>v


" Move through words wit Crtl
""-------------------------------------
nnoremap <C-Right> e<Right>
nnoremap <C-Left> b

"Switch tabs with Crtl+Shift+arrows
"-------------------------------------
:map <C-w> :close <Enter> :NERDTreeClose <Enter>
nmap <A-S-Right> gt
nmap <A-S-Left> gT

" Select all the text with Crtl+a
"-------------------------------------
:map <C-a> GVgg
"nmap <C-a> ggVG



" Map Ctrl-Backspace to delete the previous word in insert mode.
"-------------------------------------
" (Neveer could get thisone workings)
"imap <C-BS> <Esc>caw
"imap <C-BS> <C-W>
"noremap! <C-BS> <C-w>
"noremap! <C-h> <C-w>

" Undo with Crtl+z
"-------------------------------------
:map <C-C-z> :redo

" Undo with Crtl+z
"-------------------------------------
:map <C-z> u


"Find with Ctrl+f
"-------------------------------------
:map <C-f> /

"Find and Replace with Ctrl+r
"-------------------------------------
:map <C-r> :%s/

"Switch buffers with Crtl+Atl+arrows
"-------------------------------------
nnoremap <silent> <C-A-Right> <C-w>l
nnoremap <silent> <C-A-Left> <C-w>h
nnoremap <silent> <C-A-Down> <C-w>j
nnoremap <silent> <C-A-Up> <C-w>k

" Copy to 'clipboard registry' (not sure this is working...)
"map <C-v> "+p
"vmap <C-c> "+y

"Lets you move to the end of the line (virtualedit=onemore needed)
nnoremap <End> <End><Right>
noremap $ $<Right>

"----------------------------------------------------------------------------------------------
"------------------------------------ Vim custom settings -------------------------------------
"----------------------------------------------------------------------------------------------

"Leader key
"-------------------------------------
let mapleader = " "                                                                     

" Color Scheme
"-------------------------------------
set background=dark
"set t_Co=256
"colorscheme monokai-phoenix
"set guifont=JetBrainsMono\ 30
set background=dark
colorscheme jellybeans

"Treat end of lines like normal IDE
"-------------------------------------
set virtualedit=all
set sel=exclusive

"Common settings
"-------------------------------------
hi Normal guibg=NONE ctermbg=NONE
set expandtab ts=4 sw=4 ai
filetype plugin indent on
set background=dark
set encoding=utf-8
set relativenumber
set tabpagemax=15 
set softtabstop=2
set laststatus=2
set shiftwidth=4
set smartindent
set splitbelow
set cursorline
set cursorcolumn
set autoindent
set splitright
set noswapfile
set nowrap
set ignorecase
set showmatch	
set hlsearch
set incsearch
set wildmenu
set tabstop=4
set t_Co=256
set mouse=a
set number
set bs=2
set nu

"----------------------------------------------------------------------------------------------
"------------------------------------ Plug plugins --------------------------------------------
"----------------------------------------------------------------------------------------------

" To install Plugged on Unix-based systems please run the following command: curl -fLo ~/.vim/autoload/Plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'prettier/vim-prettier', { 'do': 'yarn install'}
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'watzon/vim-edge-template'
  Plug 'watzon/vim-edge-template'
  Plug 'scrooloose/nerdcommenter'
  Plug 'watzon/vim-edge-template'
  Plug 'ryanoasis/vim-devicons'
  Plug 'hashivim/vim-terraform'
  Plug 'zirrostig/vim-schlepp'
  Plug 'itchyny/vim-gitbranch'
  Plug 'itchyny/lightline.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/nerdtree'
  Plug 'mattn/vim-goimports'
  Plug 'junegunn/fzf.vim'
  Plug 'mattn/emmet-vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  "Plug 'chuling/equinusocio-material.vim'
  "Plug 'Valloric/YouCompleteMe'
  "Plug 'terryma/vim-multiple-cursors'
  "Plug 'yuki-ycino/fzf-preview.vim'
  "Plug 'ryanoasis/vim-devicons'
  "Plug 'airblade/vim-gitgutter'
  "Plug 'honza/vim-snippets'
  "Plug 'ajmwagar/vim-deus'
  "Plug 'junegunn/goyo.vim'
  "Plug 'sirVer/ultisnips'
call plug#end()

"----------------------------------------------------------------------------------------------
"------------------------------------ Plugins configuration -----------------------------------
"----------------------------------------------------------------------------------------------

"YouCompleteMe
"-------------------------------------
nnoremap <silent> <leader>g :YcmCompleter GoTo<CR>

"NerdCommenter
"-------------------------------------
"let g:user_emmet_install_global = 0
autocmd FileType html,edge,css EmmetInstall


"Multiline Cursor 
"-------------------------------------
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = 'g<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = '<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" Coc
"-------------------------------------
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ ]
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"NerdCommenter
"-------------------------------------
nmap <C-_> <Plug>NERDCommenterToggle <Down>
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv
autocmd BufWinEnter * NERDTreeMirror

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
nnoremap <silent> <Leader>s :call fzf#run({'window': { 'width': 0.9, 'height': 0.6 }, 'down': '40%','sink': 'vertical botright split', 'options': ['--layout=reverse', '--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']})<CR>
":map <C-t> :call fzf#run({'down': '40%','sink': 'tabedit', 'options': ['--layout=reverse', '--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']})<CR>
:map <C-t> :call fzf#run({'window': { 'width': 0.9, 'height': 0.6 },'down': '40%','sink': 'tabedit', 'options': ['--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']})<CR>
nnoremap <silent> <Leader>c :call fzf#run({'source': map(split(globpath(&rtp, "colors/*.vim"), "\n"),"substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),'sink': 'colo','options': '+m','right':    30})<CR>

"NERDTree
"-------------------------------------
nnoremap <leader>f :NERDTreeToggle<Enter>
let NERDTreeMapOpenInTab='<ENTER>'
"let g:NERDTreeWinSize=10
"let g:NERDTreeQuitOnOpen = 1
"autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeGitStatusWithFlags = 1

"Equinusocio Material
"-------------------------------------
"colorscheme equinusocio_material
"let g:equinusocio_material_bracket_improved = 1
"let g:equinusocio_material_less = 50
"let g:equinusocio_material_style = 'pure'
"let g:equinusocio_material_hide_vertsplit = 1

"Lightline
"-------------------------------------
let g:lightline = {'colorscheme': 'powerline','active': {'left': [ [ 'mode', 'paste' ],[ 'gitbranch', 'readonly', 'filename', 'modified' ] ]},'component_function': {'gitbranch': 'gitbranch#name'},}

"Prettier
"-------------------------------------
packloadall
nmap <C-l> <Plug>(Prettier)
"let g:prettier#quickfix_enabled = 0
"let g:prettier#autoformat = 0
"autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.g,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

"----------------------------------------------------------------------------------------------
"------------------------------------ Custom settings for filetype ----------------------------
"----------------------------------------------------------------------------------------------

"Set i3config filetype 
"-------------------------------------
aug i3config_ft_detection
  au!
    au BufNewFile,BufRead ~/.config/i3/config set filetype=i3
aug end

"Set Rofi style filetype 
"-------------------------------------
aug roficss_ft_detection
  au!
    au BufNewFile,BufRead *.rasi set filetype=css
aug end

"Set terrform filetype 
"-------------------------------------
aug terraform_ft_detection
    au!
    au BufNewFile,BufRead *.tf set filetype=terraform
aug end

"----------------------------------------------------------------------------------------------
"------------------------------------ Custom settings ----------------------------
"----------------------------------------------------------------------------------------------

" Ctrl + S is a common command to terminals to stop updating, it was a way to slow the output so you could read it on terminals that didn't have a scrollback buffer.
" (If Ctrl+S freezes your terminal, type Ctrl+Q to get it going again [https://vim.fandom.com/wiki/Map_Ctrl-S_to_save_current_or_new_files])
"-------------------------------------
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

" Tmux configuration, tmux will send xterm-style keys when its xterm-keys option is on
"-------------------------------------
if &term =~ '^tmux'                                                                   
    execute "set <xRight>=\e[1;*C"                                                      
    execute "set <xDown>=\e[1;*B"                                                       
    execute "set <xLeft>=\e[1;*D"                                                       
    execute "set <xUp>=\e[1;*A"                                                         
endif                                                                                   

" Tmux configuration, tmux will send xterm-style keys when its xterm-keys option is on
"-------------------------------------
let g:go_highlight_types = 1
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
