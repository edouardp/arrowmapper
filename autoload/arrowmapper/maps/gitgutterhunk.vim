" GitGutter Hunk Arrow Mapping
"

function! arrowmapper#maps#gitgutterhunk#set_map()
  let down_key = "<M-Down>"
  let up_key = "<M-Up>"
  execute "map " . down_key . ":GitGutterNextHunk<CR>"
  execute "map " . up_key . ":GitGutterPrevHunk<CR>"
  "map <D-Down> :GitGutterNextHunk<CR>
  "map <D-Up> :GitGutterPrevHunk<CR>
endfunction

