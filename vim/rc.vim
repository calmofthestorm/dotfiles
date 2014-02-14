" Vundle configuration and plugin control.
source ~/.vim/bundles.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Display options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Don't blink cursor except in insert or operator pending mode.
set guicursor+=n-v-c:blinkon0

" hide menus by default when running GUI.
set guioptions-=m
set guioptions-=T

" Multi-key mapping timeout
set tm=500

" Enable syntax coloring.
syn on

" Show line numbers relative to current line.

if v:version >= 703
  set relativenumber
else
  set number
endif

" Show current row and column in lower right.
set ruler

" Show matching parenthesis.
set showmatch

" Show white space characters.
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set list

" Hide completion buffer after selection is made.
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Always attempt to show 10 lines above and below the cursor.
set scrolloff=10

" Allow color schemes to do bright colors without forcing bold.
" (from tpope/vim-sensible)
if &t_Co == 8 && $TERM !~# '^linux'
  set t_Co=16
endif

" Always show status bar
set laststatus=2

" Always show last command.
set showcmd

" Display as much as possible of the last line in a window that will not fit.
" (ie, get rid of @\n@\n@...)
set display+=lastline

" Show the mode VIM is currently in.
set showmode

" Draw a line at the cursor's current line for quicker location.
set cursorline

" Use less efficient but smoother protocol when running in terminal.
set ttyfast

" Don't redraw during a macro.
set lazyredraw

" Dedicate a column to showing folds.
set foldcolumn=1

" Set color scheme
colors molokai

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom keybindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use , instead of default \ as leader. (dvorak overrides)
let mapleader=","

" Use QWERTY commands in Dvorak OS layout.
source ~/.vim/dvorak.vim

" Bizzare highly personalized keybindings.
source ~/.vim/dvorak_crazy.vim

" Plugin bindings for Dvorak (crazy is enabled).
for f in split(glob('~/.vim/dvorak_plugins/*.vim'), '\n')
  exe 'source' f
endfor

" Use Dvorak for everything except Normal mode non-chords, Qwerty for those.
" (this breaks plugins...wtf...)
" set langmap=\\'q,\\,w,\\.e,pr,yt,aa,os,ed,uf,ig,\\;z,qx,jc,kv,xb,fy,gu,ci,ro,lp,dh,hj,tk,nl,s\\;,-',bn,mm,w\\,,v\\.,z\\/,\\"Q,\\<W,\\>E,PR,YT,AA,OS,ED,UF,IG,\\:Z,QX,JC,KV,XB,FY,GU,CI,RO,LP,DH,HJ,TK,NL,S\\:,\\_\\",BN,MM,W\\<,V\\>,Z\\?,\\/-,\\?_

" Bind hh to exit insert mode.
inoremap hh <ESC>

nnoremap <F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<Bar>if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>

" Pressing space in command mode removes search highlighting.
nnoremap <Space> :noh<cr>

" F2 Saves current file in normal or insert mode.
nnoremap <F2> :w<CR>
inoremap <F2> <ESC>:w<CR>

" F5 runs make.
nnoremap <F5> :make<CR>
inoremap <F5> <ESC>:make<CR>

" Make Y work like D and C. (Dvorak)
nnoremap F y$

" Move between windows with one chord.
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l

" Close the current buffer
nnoremap <Leader>j :bd<CR>

" Swap some similar commands for more useful ones.
nnoremap ^ 0
nnoremap 0 ^

" space + [j/k] to move a line up/down.
" TODO: can these be made to take a count?
nnoremap <Space>t mz:m+<cr>`z
nnoremap <Space>n mz:m-2<cr>`z

" Add w!! to write with sudo (even if vim running without).
cmap w!! w !sudo tee % >/dev/null

" Single char insert append. Because screw Ex mode in interactive.
function! RepeatChar(char, count)
  return repeat(a:char, a:count)
endfunction
nnoremap ' :<C-U>exec "normal a".RepeatChar(nr2char(getchar()), v:count1)<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching, undo, and command line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ignore case when searching via manual pattern when pattern is all lowercase.
" Both options are needed.
set ignorecase
set smartcase

" Highlight matches to a search.
set hlsearch

" Enable incremental search to show matches as you enter a pattern.
set incsearch

" Make undo history persistent between sessions.
if v:version >= 703
  set undodir=/home/alexr/.vim/undo

  " Save undo's after file closes
  set undofile

  " Save small files (< 10000 lines) buffer reloads in undo tree.
  set undoreload=10000
endif

" Command line tab completion should list all possible completions, but only
" complete ambiguous commands if Thad is pressed again.
set wildmode=list:longest,list,full
set wildmenu

" Never tab complete these types of files at command line.
set wildignore=*.*.sw*,*.pyc,*.o,*.a,*.la,*.so

" Number of command and searches to remember.
set history=1000

" Number of levels of undo remembered.
set undolevels=1000

" Default commands to /g for substitution.
set gdefault

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation and word-wrap.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show a tab as 2 spaces.
set tabstop=2

" Indent operators default to 2 spaces.
set shiftwidth=2

" Insert tabs on the start of a line according to shiftwidth, not tabstop.
set smarttab

" Expand typed tabs into appropriate number of spaces.
set expandtab

" Allow filetype-specific plugins for indentation.
filetype plugin indent on

" Always set autoindenting on.
set autoindent

" Copy the previous indentation on autoindenting.
set copyindent

" Use multiple of shiftwidth when indenting with '<' and '>'.
set shiftround

" When word wrapping, only break on white space characters.
set lbr
set formatoptions=l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Miscellaneous
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Allow backspacing over almost anything in in insert mode.
set backspace=indent,eol,start

" Always print to a post script in the home directory.
" Note that this will overwrite any previous print from VIM.
set printexpr=PrintFile(v:fname_in)
function! PrintFile(fname)
  call system("cp " . a:fname . " ~/vimprint.ps")
  call delete(a:fname)
  return v:shell_error
endfunc

" Enable syntax coloring on printouts. Mostly for vim-outliner.
set popt+=syntax:y

" Reload .[g]vimrc whenever it is changed.
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Allow switching away from an unsaved buffer.
set hidden

" Enable mouse in all VIM modes.
set mouse=a

" Don't allow obnoxious beeping.
set noerrorbells

" Don't flash the screen either.
set novisualbell

" Default to unicode encoding.
set encoding=utf-8

" Default to LF line endings, fallback to CRLF
set ffs=unix,dos,mac

" Share unnamed register with X11 PRIMARY buffer (middle click paste)
set clipboard=unnamed

" Don't change to directory of file when opening it. This should preserve the
" desired behavior of staying in the directory of the first file opened in a
" session.
set noautochdir

" Disable execution of arbitrary VIM commands by any file I edit. Yes, I can
" see why this might be useful in some situations but my tinfoil is a little
" bit too thick for that.
set nomodeline

" When saving a VIM session, preserve cursor position and folds.
" also save the session with UNIX line endings and slash convention
" (Windows VIM can handle the UNIX format but not vice versa)
set viewoptions=cursor,folds,slash,unix

" Save viminfo in vim directory.
set viminfo+=n~/.vim/viminfo

" Don't search included files for auto complete. Unfortunate, but necessary.
set complete-=i

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug-ins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show key to press in LustyJuggler
let g:LustyJugglerShowKeys = 'a'
let g:LustyJugglerSuppressRubyWarning = 1
let g:LustyExplorerSuppressRubyWarning = 1

" Specify the colors used by rainbow parentheses.
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
  \ ]

" Use YouCompleteMe auto completion in comments.
let g:ycm_complete_in_comments = 1

" Language specific identifiers.
let g:ycm_seed_identifiers_with_syntax = 1

" Disable debugging ycm
let g:ycm_key_detailed_diagnostics = ''

" Use up and down only with YouCompleteMe, leaving tab free for UltiSnips.
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_key_list_select_completion = ['<Down>']
let g:syntastic_enable_highlighting=0

" Used tab for everything in UltiSnips.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Disable UltiSnips builtin snippets; I'm sick of dealing with conflicts
" every time I update.
let g:UltiSnipsSnippetDirectories = ['snippets']

" Use single quotes by default for Python docstrings in UltiSnips.
let g:ultisnips_python_quoting_style = 'single'

" Indent guides default to visible.
let g:indent_guides_enable_on_vim_startup=1

" Vim outliner
au FileType vo_base set noexpandtab
au FileType vo_base set nolist
au FileType vo_base set tabstop=2

" pasta (indent-fixing paste)
let g:pasta_disabled_filetypes = ['coffee', 'yaml']

" Enable rainbow parentheses.
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" F4 Switchs to previous file in normal or insert mode (relies on lusty
" juggler).
nnoremap <F4> :LustyJugglePrevious<CR>
inoremap <F4> :LustyJugglePrevious<CR>

" Use c++11 and gcc with syntastic.
" using an auto command to set this is a temporary workaround to a bug;
" setting the checkers directly somehow gets overwritten later.
autocmd CursorMovedI * let g:syntastic_cpp_compiler_options = ' -std=c++11'
autocmd CursorMovedI * let g:syntastic_cpp_checkers=['gcc']

" Pasta wants to replace builtin paste.
let g:pasta_paste_before_mapping = 'L'
let g:pasta_paste_after_mapping = 'l'

" vim:set ft=vim et sw=2:
