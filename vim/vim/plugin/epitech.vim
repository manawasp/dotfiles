function Epi_CHHeader_Insert()
  0r ~/.vim/skel/c_hdr_epi.tpl
  0r ~/.vim/skel/c_epi.tpl
  call SetHeader()
  call UpdateHeaderDate()
  normal G
  normal dd
  let save_cursor = getpos(".")
  let save_cursor[1] = save_cursor[1] - 2
  call setpos(".", save_cursor)
  endfunction

  function Epi_CHeader_Insert()
  0r ~/.vim/skel/c_epi.tpl
  call SetHeader()
  call UpdateHeaderDate()
  normal G
endfunction
