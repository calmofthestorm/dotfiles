" My personal preferences. Dvorak. Kinesis advantage.
" We cycle the keys dhtns- (qwerty keys: hjkl;- )
" and their shifted counterparts one to the right,
" so hjkl are on the home keys. Nice when using my
" bindings, but easy enough to adapt to regular
" Dvorak as necessary.
"
" Also swaps ` and '.

noremap d `
noremap D "
vnoremap ad a'
vnoremap cd i'
vnoremap aD a"
vnoremap cD i"
onoremap ad a'
onoremap cd i'
onoremap aD a"
onoremap cD i"

noremap h h
noremap H H
noremap ;h zh
noremap ;H zH

noremap t j
noremap T J
noremap iT gJ
noremap <c-w>t <c-w>j

noremap n k
noremap N K
noremap <c-w>n <c-w>k

noremap s l
noremap S L
noremap ;s zl

noremap - ;
noremap _ :

noremap ` '
noremap d `

onoremap in gk
onoremap it gj
noremap in gk
noremap it gj

" g commands not otherwise specified
noremap ih gh
noremap i- g;
noremap id g'
