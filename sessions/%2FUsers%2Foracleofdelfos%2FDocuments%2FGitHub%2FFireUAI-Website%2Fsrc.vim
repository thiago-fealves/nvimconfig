let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/GitHub/FireUAI-Website/src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 NvimTree_1
badd +25 app/page.tsx
badd +6 components/contact_us.tsx
badd +1 components/title.tsx
badd +9 components/section_title.tsx
badd +12 components/about.tsx
badd +12 components/participations.tsx
badd +27 components/button.tsx
badd +31 components/skills.tsx
badd +1 components/cards.tsx
badd +1 components/footer.tsx
badd +26 components/intro-section.tsx
badd +1 components/layoutClientWrapper.tsx
badd +1 components/nav-item.tsx
badd +24 components/navbar.tsx
badd +104 components/ProjectCard.tsx
badd +31 components/ProjectSection.tsx
badd +30 components/team.tsx
badd +1 components/teams.tsx
badd +1 components/utils.tsx
argglobal
%argdel
edit components/contact_us.tsx
argglobal
balt app/page.tsx
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 10 - ((9 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 0
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
