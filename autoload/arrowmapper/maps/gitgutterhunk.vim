" GitGutter Hunk Arrow Mapping
"

function! arrowmapper#maps#gitgutterhunk#set_map()
  call arrowmapper#map_prev("GitGutterPrevHunk")
  call arrowmapper#map_next("GitGutterNextHunk")
endfunction

