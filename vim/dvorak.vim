" Intended to be used on a Dvorak OS layout, where you want to use Dvorak for
" insert mode, searches, command line, etc, yet retain the much more
" convenient (in my opinion) qwerty bindings in command mode.
"
" The result of this code is that all command/visual/op pending mode commands,
" including multi-keystroke ones, listed in VIM's quickref will be the qwerty
" values when using a Dvorak terminal/OS layout.
"
" I found retaining CTRL keys in Dvorak preferable (for uniformity with other
" programs and insert mode).
"
" This is really a terrible hack, but sadly VIM's keymap option requires a
" qwerty keyboard layout, and langmap does not work correctly with plugins.
"
" You will need to rebind your plugins manually.

let mapleader="w"

" right hand (dvorak-related)

" top
noremap f y
noremap F Y
noremap g u
noremap G U
noremap c i
noremap C I
noremap r o
noremap R O
noremap l p
noremap L P

" home
noremap - '
noremap _ "
noremap d h
noremap h j
noremap t k
noremap n l
noremap D H
noremap H J
noremap T K
noremap N L
noremap s ;
noremap S :

" bottom
noremap b n
noremap B N
noremap m m
noremap M M
noremap w ,
noremap W <
noremap v .
noremap V >
noremap z /
noremap Z ?
noremap / -
noremap ? _

" left hand (dvorak-related)

" top
noremap ' q
noremap " Q
noremap , w
noremap < W
noremap . e
noremap > E
noremap p r
noremap P R
noremap y t
noremap Y T

" home
noremap A A
noremap O S
noremap E D
noremap U F
noremap i g
noremap I G
noremap a a
noremap o s
noremap e d
noremap u f

" bottom
noremap ; z
noremap : Z
noremap q x
noremap Q X
noremap j c
noremap J C
noremap k v
noremap K V
noremap x b
noremap X B

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Q_lr
noremap im gm
noremap i$ g$
noremap i^ g^
noremap i0 g0

" Q_ud
onoremap ii gg
onoremap ik gk
onoremap ij gj

noremap ii gg
noremap ik gk
noremap ij gj

" Q_tm
noremap ie ge
noremap iE gE

" Q_pa
noremap i# g#
noremap i- gd
noremap i_ gD

" Q_vm
noremap ir go

" Q_sc
noremap ;y zt
noremap ;; zz
noremap ;x zb
noremap ;d zh
noremap ;n zl
noremap ;D zH
noremap ;L zL

" Q_in
noremap iC gI

" Q_de
noremap iH gJ

" Q_cm
noremap ]l ]p
noremap [l [p
noremap il gp
noremap iL gP

" Q_ch
noremap ip gr
noremap ig gu
noremap iG gU
noremap i' gq

" Q_vi
vnoremap ik gv

" Q_to
onoremap a, aw
onoremap c, iw
onoremap a< aW
onoremap c< iW
onoremap ao as
onoremap co is
onoremap al ap
onoremap cl ip
onoremap ax ab
onoremap cx ib
onoremap aX aB
onoremap iX iB
onoremap aV a>
onoremap cV i>
onoremap ay at
onoremap cy it
onoremap a- a'
onoremap c- i'
onoremap a_ a"
onoremap c_ i"
onoremap a` a`
onoremap c` i`

vnoremap a, aw
vnoremap c, iw
vnoremap a< aW
vnoremap c< iW
vnoremap ao as
vnoremap co is
vnoremap al ap
vnoremap cl ip
vnoremap ax ab
vnoremap cx ib
vnoremap aX aB
vnoremap iX iB
vnoremap aV a>
vnoremap cV i>
vnoremap ay at
vnoremap cy it
vnoremap a- a'
vnoremap c- i'
vnoremap a_ a"
vnoremap c_ i"
vnoremap a` a`
vnoremap c` i`

" Q_re
noremap io gs

" Q_vc
noremap ia ga
noremap i8 g8
noremap i<c-g> g<c-g>

" Q_ed
noremap iu gfi

" Q_wq
noremap :: ZZ
noremap :" ZQ

" Q_wi
noremap <c-w>o <c-w>s
noremap <c-w>u <c-w>f
noremap <c-w>b <c-w>n
noremap <c-w>' <c-w>q
noremap <c-w>j <c-w>c
noremap <c-w>r <c-w>o
noremap <c-w>h <c-w>j
noremap <c-w>t <c-w>k
noremap <c-w>< <c-w>W
noremap <c-w>y <c-w>t
noremap <c-w>x <c-w>b
noremap <c-w>l <c-w>p
noremap <c-w>p <c-w>r
noremap <c-w>P <c-w>r
noremap <c-w>q <c-w>x
noremap <c-w>/ <c-w>-
noremap <c-w>? <c-w>_
noremap <c-w>d <c-w>h
noremap <c-w>n <c-w>l

" Q_fo
noremap ;u zf
noremap ;e zd
noremap ;E zD
noremap ;r zo
noremap ;R zR
noremap ;j zc
noremap ;J zC
noremap ;m zm
noremap ;M zM
noremap ;p zr
noremap ;R zR
noremap ;b zn
noremap ;B zB
noremap ;c zi
