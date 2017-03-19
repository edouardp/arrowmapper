" ArrowMapper Utilities
"


function! arrowmapper#up_key()
    if has('mac')
        return "<D-Up>"
    endif
    if has('win32')
        return "<M-Up>"
    end
    if has('unix')
        return "<T-Up>"
    end
endfunction


function! arrowmapper#down_key()
    if has('mac')
        return "<D-Down>"
    endif
    if has('win32')
        return "<M-Down>"
    end
    if has('unix')
        return "<T-Down>"
    end
endfunction


function! arrowmapper#map_prev(command)
    let g:arrowmapper_prev_command = a:command
    let up_key = arrowmapper#up_key()
    execute "map " . l:up_key . " :call ArrowMapperPrev()<CR>"
endfunction


function! arrowmapper#map_next(command)
    let g:arrowmapper_next_command = a:command
    let down_key = arrowmapper#down_key()
    execute "map " . l:down_key . " :call ArrowMapperNext()<CR>"
endfunction

