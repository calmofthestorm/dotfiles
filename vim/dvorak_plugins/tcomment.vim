let g:tcommentMaps = 0

let g:tcommentMapLeader1 = '<c-_>'
let g:tcommentMapLeader2 = '<leader>?'
let g:tcommentMapLeaderOp1 = 'ij'
let g:tcommentMapLeaderOp2 = 'iJ'
let g:tcommentTextObjectInlineComment = 'cj'

exec 'map '. g:tcommentMapLeader1 . g:tcommentMapLeader1 .' <Plug>TComment-<c-_><c-_>'
exec 'vmap '. g:tcommentMapLeader1 . g:tcommentMapLeader1 .' <Plug>TComment-<c-_><c-_>'
exec 'imap '. g:tcommentMapLeader1 . g:tcommentMapLeader1 .' <Plug>TComment-<c-_><c-_>'
exec 'map '. g:tcommentMapLeader1 .'l <Plug>TComment-<c-_>p'
exec 'imap '. g:tcommentMapLeader1 .'l <Plug>TComment-<c-_>p'
exec 'map '. g:tcommentMapLeader1 .'<space> <Plug>TComment-<c-_><space>'
exec 'imap '. g:tcommentMapLeader1 .'<space> <Plug>TComment-<c-_><space>'
exec 'imap '. g:tcommentMapLeader1 .'p <Plug>TComment-<c-_>r'
exec 'map '. g:tcommentMapLeader1 .'p <Plug>TComment-<c-_>r'
exec 'vmap '. g:tcommentMapLeader1 .'c <Plug>TComment-<c-_>i'
exec 'map '. g:tcommentMapLeader1 .'c <Plug>TComment-<c-_>i'
exec 'imap '. g:tcommentMapLeader1 .'c <Plug>TComment-<c-_>i'
exec 'map '. g:tcommentMapLeader1 .'x <Plug>TComment-<c-_>b'
exec 'imap '. g:tcommentMapLeader1 .'x <Plug>TComment-<c-_>b'
exec 'map '. g:tcommentMapLeader1 .'a <Plug>TComment-<c-_>a'
exec 'imap '. g:tcommentMapLeader1 .'a <Plug>TComment-<c-_>a'
exec 'map '. g:tcommentMapLeader1 .'b <Plug>TComment-<c-_>n'
exec 'imap '. g:tcommentMapLeader1 .'b <Plug>TComment-<c-_>n'
exec 'map '. g:tcommentMapLeader1 .'o <Plug>TComment-<c-_>s'
exec 'imap '. g:tcommentMapLeader1 .'o <Plug>TComment-<c-_>s'
exec 'map '. g:tcommentMapLeader1 .'jj <Plug>TComment-<c-_>cc'
exec 'map '. g:tcommentMapLeader1 .'ja <Plug>TComment-<c-_>ca'
for s:i in range(1, 9)
    exec 'map '. g:tcommentMapLeader1 . s:i .' <Plug>TComment-<c-_>'.s:i
    exec 'imap '. g:tcommentMapLeader1 . s:i .' <Plug>TComment-<c-_>'.s:i
    exec 'vmap '. g:tcommentMapLeader1 . s:i .' <Plug>TComment-<c-_>'.s:i
endfor
unlet s:i

" I don't use these.
" if g:tcommentMapLeader2 != ''
"     exec 'map '. g:tcommentMapLeader2 .'_ <Plug>TComment-<Leader>__'
"     exec 'xmap '. g:tcommentMapLeader2 .'_ <Plug>TComment-<Leader>__'
"     exec 'map '. g:tcommentMapLeader2 .'l <Plug>TComment-<Leader>_p'
"     exec 'map '. g:tcommentMapLeader2 .'<space> <Plug>TComment-<Leader>_<space>'
"     exec 'xmap '. g:tcommentMapLeader2 .'c <Plug>TComment-<Leader>_i'
"     exec 'map '. g:tcommentMapLeader2 .'p <Plug>TComment-<Leader>_r'
"     exec 'map '. g:tcommentMapLeader2 .'x <Plug>TComment-<Leader>_b'
"     exec 'map '. g:tcommentMapLeader2 .'a <Plug>TComment-<Leader>_a'
"     exec 'map '. g:tcommentMapLeader2 .'b <Plug>TComment-<Leader>_n'
"     exec 'map '. g:tcommentMapLeader2 .'o <Plug>TComment-<Leader>_s'
" endif

exec 'nmap <silent> '. g:tcommentMapLeaderOp1 .' <Plug>TComment-gc'
for s:i in range(1, 9)
    exec 'nmap <silent> '. g:tcommentMapLeaderOp1 . s:i .' <Plug>TComment-gc'.s:i
endfor
unlet s:i
exec 'nmap <silent> '. g:tcommentMapLeaderOp1 .'j <Plug>TComment-gcc'
exec 'nmap <silent> '. g:tcommentMapLeaderOp1 .'x <Plug>TComment-gcb'
exec 'xmap '. g:tcommentMapLeaderOp1 .' <Plug>TComment-gc'
exec 'nmap <silent> '. g:tcommentMapLeaderOp2 .' <Plug>TComment-gC'
exec 'nmap <silent> '. g:tcommentMapLeaderOp2 .'j <Plug>TComment-gCc'
exec 'nmap <silent> '. g:tcommentMapLeaderOp2 .'x <Plug>TComment-gCb'
exec 'xmap '. g:tcommentMapLeaderOp2 .' <Plug>TComment-gC'

exec 'vmap' g:tcommentTextObjectInlineComment ' <Plug>TComment-ic'
exec 'omap' g:tcommentTextObjectInlineComment ' <Plug>TComment-ic'
