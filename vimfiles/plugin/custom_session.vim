function! ChangeFailSafeSettings()
  let failsafedir= $HOME . "/Dropbox/VIMBackups/" . strftime("%y%m%d") .  expand("%:p:h")
  if ! filewritable(failsafedir)
    call mkdir(failsafedir, "p")
    if ! filewritable(failsafedir)
      echoerr "Failed to create backup session directory, leaving unchanged!"
    endif
  endif
  let failsafedir = $HOME . "/Dropbox/VIMBackups/" . strftime("%y%m%d") .  expand("%:p") . "."  .  strftime("%H%M%S") . ".session.vim"
  return failsafedir
endfunction
 
" define the group FailSafeSettings
augroup FailSafeSettings
  au!
  autocmd VimLeavePre * exe 'mksession! ' . ChangeFailSafeSettings()
augroup END
