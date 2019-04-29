nnoremap <Leader>cc :call ColumnGuideToggle()<cr>

let g:showColumnGuide = 1

function! ColumnGuideToggle()
	if g:showColumnGuide == 1
		let g:showColumnGuide = 0
	else
		let g:showColumnGuide = 1
	endif

	call ShowColumnGuide()
endfunction

function! ShowColumnGuide()
	if g:showColumnGuide == 1
		set colorcolumn=80
		highlight OverLength ctermbg=1 ctermfg=white
		match OverLength /\%81v.\+/
	else
		set colorcolumn=0
		match none
	endif
endfunction

call ShowColumnGuide()
