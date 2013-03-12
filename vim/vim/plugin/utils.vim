function UpdateHeaderDate()
  let save_cursor  = getpos(".")
  let la = "## Last update @@MDATE@@ clovis kyndt"
  let la = substitute(la, "@@MDATE@@", strftime("%a %b %d %H:%M:%S %Y"), "ge")
  let la = substitute(la, "clovis kyndt", "clovis kyndt", "ge")
  execute "%s,^## Last update.*," . la . ",ge"
  let lu = "** Last update @@MDATE@@ clovis kyndt"
  let lu = substitute(lu, "@@MDATE@@", strftime("%a %b %d %H:%M:%S %Y"), "ge")
  let lu = substitute(lu, "clovis kyndt", "clovis kyndt", "ge")
  execute "%s,^\*\* Last update.*," . lu . ",ge"
  call setpos('.', save_cursor)
endfunction

function SetHeader()
  let save_cursor  = getpos(".")
  execute "%s,@@FNAME@@," . expand("%:t") . ",ge"
  execute "%s,@@HDR_NAME@@," . toupper(substitute(expand("%:t"),'\..*$', "","ge")) . ",ge"
  execute "%s,@@PNAME@@," . substitute(substitute(expand("%:p"),'/[^/]*$', "","ge"), "^.*/", "", "ge") . ",ge"
  execute "%s,@@FPATH@@," . substitute(expand("%:p"), '/[^/]*$', "", "ge") . ",ge"
  execute "%s,@@AUTHOR@@," . $NAME . ",ge"
  execute "%s,@@AUTHORMAIL@@," . substitute(tolower($NAME), " ", ".", "ge") . "@epitech.eu,ge"
  execute "%s,@@CDATE@@," . strftime("%a %b %d %H:%M:%S %Y") . ",ge"
  call setpos('.', save_cursor)
endfunction
