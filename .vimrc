" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0

if has('nvim')
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
  set termguicolors
endif

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/vendor/*
let mapleader = ","
set clipboard=unnamedplus          "sync with OS clipboard
set noswapfile
set expandtab                      "spaces instead of tabs
set smarttab                       "use shiftwidth to enter tabs
set timeoutlen=500                 "leader key timeout
set ignorecase
set smartcase
set incsearch
set hlsearch
let &tabstop=2                     "number of spaces per tab for display
let &softtabstop=2                 "number of spaces per tab in insert mode
let &shiftwidth=2                  "number of spaces when indenting
set undofile                       "persistent undo
set undodir=$HOME/.vimundo

call plug#begin()
Plug 'junegunn/vim-easy-align' "{{{
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
"}}}
Plug 'elmcast/elm-vim', { 'for': 'elm' }
Plug 'tpope/vim-repeat',
Plug 'lumiliet/vim-twig', { 'for': 'twig' }
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-unimpaired'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' "{{{
  let g:UltiSnipsExpandTrigger = "<tab>"
  let g:UltiSnipsJumpForwardTrigger = "<c-f>"
  let g:UltiSnipsJumpBackwardTrigger = "<c-b>"
"}}}
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar' "{{{
nmap <F8> :TagbarToggle<CR>
"}}}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree' "{{{
  let NERDTreeShowHidden=1
  let NERDTreeQuitOnOpen=0
  let NERDTreeShowLineNumbers=1
  let g:NERDTreeWinPos='right'

  nnoremap <F2> :NERDTreeToggle<CR>
  nnoremap <F3> :NERDTreeFind<CR>
"}}}
Plug 'tpope/vim-fugitive'
" neomake is much faster then syntastic
if has('nvim')
  Plug 'neomake/neomake'  "{{{
  autocmd! BufWritePost * Neomake
  let g:neomake_javascript_enabled_makers = ['eslint']
  let g:neomake_javascript_eslint_exe = system('PATH=$(npm bin):$PATH && which eslint | tr -d "\n"')
  let g:neomake_typescript_enabled_makers = ['tslint']
  let g:neomake_css_enabled_makers = ['stylelint']
  let g:neomake_css_stylelint_exe = system('PATH=$(npm bin):$PATH && which stylelint | tr -d "\n"')
  "}}}
else
  Plug 'scrooloose/syntastic' "{{{
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 0
  let g:syntastic_check_on_open = 0
  let g:syntastic_check_on_wq = 0
  let g:syntastic_haskell_checkers=['']
  let g:syntastic_latex_checkers=['']
  let g:syntastic_javascript_checkers = ['eslint']
  "}}}
endif
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown' "{{{
  let g:vim_markdown_frontmatter = 1
"}}}
Plug 'mileszs/ack.vim' "{{{
  let g:ackprg = "ag --vimgrep"
"}}}
Plug 'terryma/vim-multiple-cursors'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' } "{{{
  let g:jsx_ext_required = 0
"}}}
" Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
" Plug 'othree/yajs.vim'
" Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'mattn/emmet-vim'
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'mhinz/vim-startify' "{{{
  nnoremap <F1> :Startify<cr>
  let g:startify_change_to_vcs_root = 1
"}}}
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter' "{{{
  let g:NERDSpaceDelims = 1
"}}}
Plug 'bling/vim-airline' " {{{
  nmap <leader># :b#<CR>
  nmap <leader>1 <Plug>AirlineSelectTab1
  nmap <leader>2 <Plug>AirlineSelectTab2
  nmap <leader>3 <Plug>AirlineSelectTab3
  nmap <leader>4 <Plug>AirlineSelectTab4
  nmap <leader>5 <Plug>AirlineSelectTab5
  nmap <leader>6 <Plug>AirlineSelectTab6
  nmap <leader>7 <Plug>AirlineSelectTab7
  nmap <leader>8 <Plug>AirlineSelectTab8
  nmap <leader>9 <Plug>AirlineSelectTab9
  let g:airline_powerline_fonts=1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '¦'
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  let g:airline#extensions#tabline#show_splits = 0
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" }}}
Plug 'vim-airline/vim-airline-themes'
Plug 'coot/atp_vim' " {{{
  let g:atp_folding=1
  let g:tex_flavor='latex'
  let b:atp_Viewer="zathura"
"}}}
Plug 'Shougo/neomru.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'kien/ctrlp.vim' "{{{
  let g:ctrlp_cmd = 'CtrlPMixed'
  "let g:ctrlp_user_command = 'git ls-files --exclude-standard %s'
  let g:ctrlp_max_height=15
  let g:ctrlp_show_hidden=0
  let g:ctrlp_follow_symlinks=1
  let g:ctrlp_reuse_window='startify'
  let g:ctrlp_extensions=['funky']
  let g:ctrlp_custom_ignore = {
        \ 'dir': '\v[\/](\.(git|hg|svn|idea)$)|(node_modules)',
        \ 'file': '\v\.DS_Store$'
        \ }

  nmap \ [ctrlp]
  nnoremap [ctrlp] <nop>

  nnoremap [ctrlp]f :FZF<cr>
  nnoremap [ctrlp]T :CtrlPTag<cr>
  nnoremap [ctrlp]l :CtrlPLine<cr>
  nnoremap [ctrlp]o :CtrlPFunky<cr>
  nnoremap [ctrlp]b :CtrlPBuffer<cr>
"}}}
Plug 'mhartington/vim-angular2-snippets'
Plug 'nanotech/jellybeans.vim'
Plug 'itchyny/vim-haskell-indent', { 'for': 'haskell' }
Plug 'ervandew/supertab' "{{{
let g:SuperTabDefaultCompletionType = '<C-n>'
"}}}
" if !has('nvim')
  " Plug 'Valloric/YouCompleteMe' "{{{
  " let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
  " let g:ycm_autoclose_preview_window_after_completion=0
  " let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
  " let g:SuperTabDefaultCompletionType = '<C-n>'
  " let g:ycm_server_python_interpreter= '/usr/bin/python'
  " nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>
  " nnoremap <leader>gr :YcmCompleter GoToReferences<CR>
" endif

if has('nvim')
  function! DoRemote(arg)
    UpdateRemotePlugins
  endfunction
  Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') } " | Plug 'carlitux/deoplete-ternjs'
  let g:deoplete#enable_at_startup = 1
  " let g:deoplete#omni_patterns = {}
  " let g:deoplete#omni_patterns.javascript = '[^. \t]\.\w*'
  let g:tern_request_timeout = 1
  let g:tern_show_signature_in_pum = '0'
endif
"}}}

call plug#end()

if has('nvim')
  call deoplete#custom#set('ultisnips', 'min_pattern_length', 1)
endif

" ui configuration {{{
syntax enable
exec 'colorscheme jellybeans'
set showmatch                                       "automatically highlight matching braces/brackets/etc.
set matchtime=2                                     "tens of a second to show matching parentheses
set number
set lazyredraw
set laststatus=2
set noshowmode
set foldenable                                      "enable folds by default
set foldmethod=syntax                               "fold via syntax of files
set foldlevelstart=99                               "open all folds by default
" let g:xml_syntax_folding=1                          "enable xml folding

set cursorline
autocmd WinLeave * setlocal nocursorline
autocmd WinEnter * setlocal cursorline
"  let &colorcolumn=s:settings.max_column    "black bar

if has('conceal')
  set conceallevel=0
  set listchars+=conceal:Δ
endif

if has('gui_running')
  " open maximized
  " set lines=999 columns=9999

  set guioptions+=t                                 "tear off menu items
  set guioptions-=T                                 "toolbar icons
  set guioptions-=L                                 "disable scroll bar
  set guioptions-=r                                 "disable scroll bar

  if has('gui_gtk')
    set gfn=Source\ Code\ Pro\ for\ Powerline\ 12
    " set gfn=Ubuntu\ Mono\ 11
    set guioptions=ai
  endif
else
  let g:NERDTreeDirArrows=0
  let &t_SI = "\x1b[\x34 q"
  let &t_EI = "\x1b[\x32 q"
  if $COLORTERM == 'gnome-terminal'
    set t_Co=256 "why you no tell me correct colors?!?!
  endif
  if $TERM_PROGRAM == 'iTerm.app'
    " different cursors for insert vs normal mode
    if exists('$TMUX')
      let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
      let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    else
      let &t_SI = "\x1b[\x34 q"
      let &t_EI = "\x1b[\x32 q"
    endif
  endif
endif
"}}}

" mappings {{{
nmap <space>b :CtrlPBuffer<CR>

" formatting shortcuts
vmap <leader>bh :call RangeHtmlBeautify()<cr>


nmap <leader>fef :call Preserve("normal gg=G")<CR>
nmap <leader>f$ :call StripTrailingWhitespace()<CR>
vmap <leader>s :sort<cr>

" eval vimscript by line or visual selection
nmap <silent> <leader>e :call Source(line('.'), line('.'))<CR>
vmap <silent> <leader>e :call Source(line('v'), line('.'))<CR>

nnoremap <leader>w :w<cr>

" toggle paste
map <F6> :set invpaste<CR>:set paste?<CR>

" remap arrow keys
nnoremap <left> :bprev<CR>
nnoremap <right> :bnext<CR>
nnoremap <up> :tabnext<CR>
nnoremap <down> :tabprev<CR>

" smash escape
inoremap jk <esc>
inoremap kj <esc>

" change cursor position in insert mode
inoremap <C-h> <left>
inoremap <C-l> <right>

inoremap <C-u> <C-g>u<C-u>

if mapcheck('<space>/') == ''
  nnoremap <space>/ :vimgrep //gj **/*<left><left><left><left><left><left><left><left>
endif

" sane regex {{{
" nnoremap / /\v
" vnoremap / /\v
" nnoremap ? ?\v
" vnoremap ? ?\v
" nnoremap :s/ :s/\v
" }}}

" command-line window {{{
nnoremap q: q:i
nnoremap q/ q/i
nnoremap q? q?i
" }}}

" folds {{{
nnoremap zr zr:echo &foldlevel<cr>
nnoremap zm zm:echo &foldlevel<cr>
nnoremap zR zR:echo &foldlevel<cr>
nnoremap zM zM:echo &foldlevel<cr>
" }}}

" screen line scroll
nnoremap <silent> j gj
nnoremap <silent> k gk

" auto center {{{
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz
nnoremap <silent> <C-o> <C-o>zz
nnoremap <silent> <C-i> <C-i>zz
"}}}

" reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" reselect last paste
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" find current word in quickfix
nnoremap <leader>fw :execute "vimgrep ".expand("<cword>")." %"<cr>:copen<cr>
" find last search in quickfix
nnoremap <leader>ff :execute 'vimgrep /'.@/.'/g %'<cr>:copen<cr>

" shortcuts for windows {{{
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>s <C-w>s
nnoremap <leader>vsa :vert sba<cr>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"}}}

" tab shortcuts
map <leader>tn :tabnew<CR>
map <leader>tc :tabclose<CR>

" make Y consistent with C and D. See :help Y.
nnoremap Y y$

" hide annoying quit message
nnoremap <C-c> <C-c>:echo<cr>

" window killer
nnoremap <silent> <C-q> :call CloseWindowOrKillBuffer()<cr>
nnoremap <silent> Q :bp\|bd #<cr>

" quick buffer open
nnoremap gb :ls<cr>:e #

" general
nmap <leader>l :set list! list?<cr>
nnoremap <BS> :set hlsearch! hlsearch?<cr>

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" helpers for profiling {{{
nnoremap <silent> <leader>DD :exe ":profile start profile.log"<cr>:exe ":profile func *"<cr>:exe ":profile file *"<cr>
nnoremap <silent> <leader>DP :exe ":profile pause"<cr>
nnoremap <silent> <leader>DC :exe ":profile continue"<cr>
nnoremap <silent> <leader>DQ :exe ":profile pause"<cr>:noautocmd qall!<cr>
"}}}
"}}}

" functions {{{
function! s:get_cache_dir(suffix) "{{{
  return resolve(expand(s:cache_dir . '/' . a:suffix))
endfunction "}}}
function! Source(begin, end) "{{{
  let lines = getline(a:begin, a:end)
  for line in lines
    execute line
  endfor
endfunction "}}}
function! Preserve(command) "{{{
  " preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " do the business:
  execute a:command
  " clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction "}}}
function! StripTrailingWhitespace() "{{{
  call Preserve("%s/\\s\\+$//e")
endfunction "}}}
function! EnsureExists(path) "{{{
  if !isdirectory(expand(a:path))
    call mkdir(expand(a:path))
  endif
endfunction "}}}
function! CloseWindowOrKillBuffer() "{{{
  let number_of_windows_to_this_buffer = len(filter(range(1, winnr('$')), "winbufnr(v:val) == bufnr('%')"))

  " never bdelete a nerd tree
  if matchstr(expand("%"), 'NERD') == 'NERD'
    wincmd c
    return
  endif

  if number_of_windows_to_this_buffer > 1
    wincmd c
  else
    bdelete
  endif
endfunction "}}}
function! TextEnableCodeSnip(filetype,start,end,textSnipHl) abort "{{{
  let ft=toupper(a:filetype)
  let group='textGroup'.ft
  if exists('b:current_syntax')
    let s:current_syntax=b:current_syntax
    " Remove current syntax definition, as some syntax files (e.g. cpp.vim)
    " do nothing if b:current_syntax is defined.
    unlet b:current_syntax
  endif
  execute 'syntax include @'.group.' syntax/'.a:filetype.'.vim'
  try
    execute 'syntax include @'.group.' after/syntax/'.a:filetype.'.vim'
  catch
  endtry
  if exists('s:current_syntax')
    let b:current_syntax=s:current_syntax
  else
    unlet b:current_syntax
  endif
  execute 'syntax region textSnip'.ft.'
        \ matchgroup='.a:textSnipHl.'
        \ start="'.a:start.'" end="'.a:end.'"
        \ contains=@'.group
endfunction "}}}
call TextEnableCodeSnip('html','<script.*type=\"text\/x-handlebars-template\">','<\/script>', 'SpecialComment')

function! MakeSession()
  if g:sessionfile != ""
    echo "Saving."
    if (filewritable(g:sessiondir) != 2)
      exe 'silent !mkdir -p ' g:sessiondir
      redraw!
    endif
    exe "mksession! " . g:sessionfile
  endif
endfunction

function! LoadSession()
  if argc() == 0
    let g:sessiondir = $HOME . "/.vim/sessions" . getcwd()
    let g:sessionfile = g:sessiondir . "/session.vim"
    if (filereadable(g:sessionfile))
      exe 'source ' g:sessionfile
    else
      echo "No session loaded."
    endif
  else
    let g:sessionfile = ""
    let g:sessiondir = ""
  endif
endfunction
"}}}

" auto command {{{
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
"}}
