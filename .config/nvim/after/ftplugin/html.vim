setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab

imap </ </<C-X><C-O>

let b:ale_fixers = ['prettier']
let b:ale_fix_on_save = 1
