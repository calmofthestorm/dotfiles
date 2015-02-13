set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'tomasr/molokai'

" Enable /after hooks for color schemes.
Bundle 'AfterColors.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" simple
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" fully automatic detect indentation
Bundle 'tpope/vim-sleuth'

" color parentheses matching pretty colors!
Bundle 'kien/rainbow_parentheses.vim'

" vim a.cc:33 opens a.cc on line 33 iff a.cc:33 does not exist.
Bundle 'bogado/file-line'

" visually display indent levels with alternating columns
Bundle 'nathanaelkane/vim-indent-guides'

" save file position and folds when reopening a file
Bundle 'restore_view.vim'

" integrates python documentation (leader pw/pW to lookup at cursor)
Bundle 'fs111/pydoc.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" complicated
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Bundle 'jceb/vim-orgmode'

" Leader Leader wWbBfF ge
Bundle 'Lokaltog/vim-easymotion'

" ,w ,b ,e also [i]
Bundle 'bkad/CamelCaseMotion'

" Bundle 'bling/vim-airline'

" love this!
Bundle 'vimoutliner/vimoutliner'

" yay!
Bundle 'scrooloose/syntastic'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Commenting (and alignment)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gcc gC c-_ c-_
Bundle 'tomtom/tcomment_vim'

" Bundle 'scrooloose/nerdcommenter'
" Bundle 'Align'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fuzzy opening and buffer navigation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" command t
Bundle 'git://git.wincent.com/command-t.git'

" ,lj
Bundle 'LustyJuggler'

" for when on platforms  with no command t
Bundle 'LustyExplorer'

" Bundle 'corntrace/bufexplorer'
" Bundle 'kien/ctrlp.vikm'
" Bundle 'jeetsukumaran/vim-buffergator'
" Bundle 'scratch.vim'
" Bundle 'scrooloose/nerdtree'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto completion and tags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" awesome auto completion. Only really needed for substantial coding,
Bundle 'Valloric/YouCompleteMe'

" Bundle 'gmarik/ide-popup.vim'
" Bundle 'xolox/easytags'
" Bundle 'vim_taglist'
" Bundle 'brookhong/cscope.vim'
" Bundle 'majutsushi/tagbar'
" Bundle 'rkulla/pydiction'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" source control integration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" git. :Gstatus Gcommit Gdiff , (add/reset with - in file view)
Bundle 'tpope/vim-fugitive'

" Bundle 'ghewgill/vim-scmdiff'
" Bundle 'airblade/vim-gitgutter'
" Bundle 'gregsexton/gitv'
" Bundle 'mhinz/vim-signify'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" file access
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle 'yegappan/mru'
" Bundle 'vim-scripts/a.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" miscellaneous
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Match braces etc (doesn't play super great with the way I sue snippets)
" Bundle 'Townk/vim-autoclose'

" Allow C-a and C-x for dates
Bundle 'tpope/vim-speeddating'

Bundle 'Shougo/vimshell.vim'

" Adds ][ bindings for common paired commands (eg error jumping)
Bundle 'tpope/vim-unimpaired'

Bundle 'hsitz/VimOrganizer'

Bundle 'vim-scripts/tar.vim'

" Bundle 'tpope/vim-eunuch'
" Bundle 'Rip-Rip/clang_complete'
" Bundle 'Conque-Shell'
" Bundle 'TaskList'
" Bundle 'searchfold.vim'
" Bundle 'project.vim'
" Bundle 'jmcantrell/vim-virtualenv'
" Bundle 'jpalardy/vim-slime'
" Bundle 'mileszs/ack.vim'

" http://rope.sourceforge.net/ropevim.html
" Bundle 'tpope/vim-abolish'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" windows and tabs and sessions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle 'edsono/vim-sessions'
" Bundle 'ZoomWin'
" Bundle 'tpope/vim-obsession'
" Bundle 'a.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" snippets like text mate
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Life changing! dotfiles/vim/UltiSnips has snippets.
Bundle 'SirVer/ultisnips'

Bundle 'derekwyatt/vim-protodef'
" Bundle 'snippetsEmu'
" Bundle 'msanders/snipmate.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" editing and movement and marks and motions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Parameter reordering
Bundle 'AndrewRadev/sideways.vim'
Bundle 'tek/vim-fieldtrip'
Bundle 'kana/vim-submode'
Bundle 'kien/ctrlp.vim'

" indent-based text objects: ai ii al il
Bundle 'calmofthestorm/vim-indent-object'

" Add csXX to change delimiters like '', <>, etc.
Bundle 'tpope/vim-surround'

" C-n repeatedly makes multiple selections.
Bundle 'terryma/vim-multiple-cursors'

" Autoindent pastes (slightly smarter than ]p for hand-indented code)
Bundle 'sickill/vim-pasta'

" Bundle 'kshenoy/vim-signature'
" Bundle 'godlygeek/tabular'
" Bundle 'AutoClose'
" Bundle 'tpope/vim-capslock'
" Bundle 'chrisbra/NrrwRgn'
" Bundle 'AndrewRadev/splitjoin.vim'
" Bundle 'juanpabloaj/ShowMarks'
" Bundle 'Parameter-Text-Objects'
" Bundle 'argtextobj.vim'
" Bundle 'upAndDown'
" Bundle 'tpope/vim-endwise'
" Bundle 'mileszs/ack.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle 'sjl/gundo.vim'
" Bundle 'mbbill/undotree'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mode lines
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle 'bling/vim-airline'
" Bundle 'Lokaltog/vim-powerline'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" evaluation fast track
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle 'xolox/vim-session'
" Bundle 'python.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundle 'tomtom/viki_vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Bundle 'motus/pig.vim'
Bundle 'uarun/vim-protobuf'
Bundle 'tpope/vim-git'
Bundle 'Arduino-syntax-file'

" Bundle 'anzaika/go.vim'
" Bundle 'jnwhiteh/vim-golang'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" libs (other bundles use these)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'L9'
Bundle 'xolox/vim-misc'
Bundle 'tpope/vim-repeat'
Bundle 'tlib'
Bundle 'Shougo/vimproc.vim'

filetype plugin indent on     " required!

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

