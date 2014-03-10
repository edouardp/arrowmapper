" GitGutter Hunk Arrow Mapping
"

function! arrowmapper#maps#gitgutterhunk#set_map()
  map <D-Down> :GitGutterNextHunk<CR>
  map <D-Up> :GitGutterPrevHunk<CR>
endfunction

