set flp=\\v^\\s*[[(]?(\\d+\|\\a\|[IiVvXxLlCcDdMm]+)[]:.)]\\s+
set com^=s1:#\|,mb:\|,ex:\|#,b:--,b:#:,n:# com+=b:!,b:\",b:;,bf:..,b:\\
set ai bs=2 cm=blowfish2 cpo+=M enc=utf-8 et fcl=all fo+=n ic
set lcs+=tab:‣‧,trail:‧ ml mls=1 mps+=<:> ru ruf=%l:%c sc scs sts=4 sw=1
set ww=h,l,[,]
set bg=dark

au BufNewFile,BufRead *.{bh,tsv,txt} setl noet sts=0
au BufNewFile,BufRead *.{yml,yaml}   setl sts=2
au BufNewFile,BufRead Makefile       setl noet sts=0
au BufReadCmd         *.whl          call zip#Browse(expand("<amatch>"))
au BufWinEnter * if getfsize(expand("%")) > 1024*1024 | syntax clear | endif

dig uh 601 y- 563 Y- 562 zh 658 sh 643 dh 240 DH 208 !? 8253 :: 776
dig ^1 185 ^2 178 ^3 179 ^4 8308 ^5 8309 ^6 8310 ^7 8311 ^8 8312 ^9 8313 ^0 8304
dig ^n 8319 ^+ 8314 ^- 8315
dig _1 8321 _2 8322 _3 8323 _4 8324 _5 8325 _6 8326 _7 8327 _8 8328 _9 8329
dig _0 8320 _+ 8330 _- 8331
dig NN 8469 ZZ 8484 QQ 8474 RR 8477 CC 8450 HH 8461 PP 8473 PW 119979
dig && 8743 \|\| 8744 !! 172 ^^ 8853 (< 10216 >) 10217 (/ 8713 x\| 8906
dig NE 8708 ~= 8773 ~~ 8776 T^ 8868 \|- 8866 v\| 8595 ^\| 8593 \\ 8726 dx 10799
dig _. 8228 .. 8230 )< 8828

map s 24j|map S 24k
"map s <C-F>zz|map S <C-B>zz
map W <C-W>w
map \- :exe "normal " . (81-col("$")) . "A-\e"<CR>
map \= :exe "normal " . (81-col("$")) . "A=\e"<CR>
cmap <C-A> <C-B>

let loaded_matchparen=1
syntax on

hi! link Character String
hi! link Float Number
hi! link Structure Label

if &bg == "light"
    hi String ctermfg=DarkBlue
endif

hi Number ctermfg=DarkRed
hi Special ctermfg=DarkRed
hi Operator ctermfg=DarkRed
hi Function ctermfg=DarkRed
hi Boolean ctermfg=DarkGreen
hi Constant ctermfg=DarkGreen
hi markdownCode ctermfg=DarkGreen
