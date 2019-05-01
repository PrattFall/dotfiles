setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab

let b:ale_fixers = ['php_cs_fixer']
let b:ale_linters = ['php']

let b:ale_fix_on_save = 1
let b:ale_lint_on_save = 1
let b:ale_lint_on_text_changed = 0
