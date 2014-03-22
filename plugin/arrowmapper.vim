" ArrowMap command
"

function! ArrowMapperNext()
    execute g:arrowmapper_next_command
    execute 'normal zz'
endfunction


function! ArrowMapperPrev()
    execute g:arrowmapper_prev_command
    execute 'normal zz'
endfunction


function! s:get_maps(a, l, p)
  let files = split(globpath(&rtp, 'autoload/arrowmapper/maps/'.a:a.'*'), "\n")
  return map(files, 'fnamemodify(v:val, ":t:r")')
endfunction


function! s:arrowmapper_setmap(...)
  if a:0
    try
      call arrowmapper#maps#{a:1}#set_map()
    catch
      echohl WarningMsg | echo 'The specified style cannot be found.' | echohl NONE
    endtry
  else
    echo g:arrowmapper_map
  endif
endfunction


command! -nargs=? -complete=customlist,<sid>get_maps ArrowMap call <sid>arrowmapper_setmap(<f-args>)

