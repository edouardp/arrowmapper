" ArrowMap command
"

function! ArrowMapperNext()
    execute g:arrowmapper_next_command
    if(exists('g:arrowmapper_centering') && g:arrowmapper_centering == 1)
        execute 'normal zz'
    end
endfunction


function! ArrowMapperPrev()
    execute g:arrowmapper_prev_command
    if(exists('g:arrowmapper_centering') && g:arrowmapper_centering == 1)
        execute 'normal zz'
    end
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



function! s:arrowmapper_set_centering_on(...)
    let g:arrowmapper_centering = 1
endfunction

function! s:arrowmapper_set_centering_off(...)
    let g:arrowmapper_centering = 0
endfunction

function! s:arrowmapper_set_centering_toggle(...)
    if(exists('g:arrowmapper_centering'))
        if(g:arrowmapper_centering == 1)
            let g:arrowmapper_centering = 0
        else
            let g:arrowmapper_centering = 1
        end
    else
        let g:arrowmapper_centering = a:1
    end
endfunction

command! ArrowMapCenteringOn call <sid>arrowmapper_set_centering_on()
command! ArrowMapCenteringOff call <sid>arrowmapper_set_centering_off()
command! ArrowMapCenteringToggle call <sid>arrowmapper_set_centering_toggle()

