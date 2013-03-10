"Check to see if origbdir has been set. If it has not, set it to backupdir
if !has_key(s:, 'origbdir')
  let s:origbdir = &bdir
endif

function! s:ChangeBackupSettings()
"the backupdir should be set to a recoverable, time based directory that reflects the 
"file that was being edited
  let &backupdir=$HOME . "/Dropbox/VIMBackups/" . strftime("%y%m%d") . "/" . expand("%:p:h")
  let dir=&backupdir
  let &backupext ='.' . strftime("%H%M%S") . '.bak'

  if ! filewritable(dir)
    call mkdir(dir, "p")
    if ! filewritable(dir)
      echoerr "Failed to create backup directory, leaving unchanged!"
    endif
  endif
endfunction

"define the group BackupSettings...
augroup BackupSettings
"delete any old commands in the group BackupSettings
  au!
"before writing the whole buffer to a file call this function
  autocmd BufWritePre * call s:ChangeBackupSettings()
augroup END 
