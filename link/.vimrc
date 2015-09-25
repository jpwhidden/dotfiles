au! BufAdd,BufNewFile,BufRead,BufWritePost
set mouse=a
set number
set foldnestmax=1
set foldmethod=syntax
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"automatically update Tlist on every save
"au BufWritePost * :TlistUpdate

"automatically check file for external updates
au CursorHold * call Timer()
function! Timer()
    call feedkeys("f\e")
    checktime
endfunction
au CursorHoldI * checktime
"au CursorHoldI * call TimerI()
"function! TimerI()
"    call feedkeys("\<C-R>\e")
"    checktime
"endfunction
set updatetime=2000  " milliseconds

"set Tags List window to width of 40
let Tlist_WinWidth = 40

"always open in a tab (works weird)
"au BufAdd,BufNewFile,BufRead * nested tab sball
"au BufAdd * nested tab sball

"needed for Ctrl-pgup/pgdn within gnu screen:
map <ESC>[5;5~ <C-PageUp>
map <ESC>[6;5~ <C-PageDown>
map! <ESC>[5;5~ <C-PageUp>
map! <ESC>[6;5~ <C-PageDown>

"if match($TERM, "screen")!=-1
"  set term=xterm
"endif

"maps space key to toggle fold if inside a fold
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <silent> <F7> :TlistAddFiles *.c *.h<CR>
let Tlist_Auto_Highlight_Tag = 0
let Tlist_File_Fold_Auto_Close = 1
":nunmap <F7><CR>

function Trackerdev()
  TlistAddFiles *.c *.h
  Tlist
  cd ../Debug
endfunction
