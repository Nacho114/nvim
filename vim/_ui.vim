set termguicolors
set background=dark

colorscheme tokyonight-storm

let g:lightline = {
      \ 'colorscheme': 'tokyonight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'filename' ],
      \              [ 'coc_info'],
      \              [ 'coc_hint'],
      \              [ 'coc_warning'],
      \              [ 'coc_error'] ],
      \   'right': [ [ 'percent' ]]
      \ },
      \ 'component_expand': {
      \   'coc_warning': 'CocWarnings',
      \   'coc_error': 'CocErrors',
      \   'coc_info'         : 'CocInfos',
      \   'coc_hint'         : 'CocHints',
      \ },
      \ }

let g:lightline.component_type = {
\   'coc_error'        : 'error',
\   'coc_warning'      : 'warning',
\   'coc_info'         : 'tabsel',
\   'coc_hint'         : 'middle',
\ }

function! s:get_coc_diagnostic(kind, sign) abort
  let info = get(b:, 'coc_diagnostic_info', 0)
  if empty(info) || get(info, a:kind, 0) == 0
    return ''
  endif
  return printf('%s%d', a:sign, info[a:kind])
endfunction

function! CocErrors() abort
  return s:get_coc_diagnostic('error', 'E')
endfunction
function! CocWarnings() abort
  return s:get_coc_diagnostic('warning', 'W')
endfunction
function! CocInfos() abort
  return s:get_coc_diagnostic('information', 'I')
endfunction
function! CocHints() abort
  return s:get_coc_diagnostic('hint', 'H')
endfunction

autocmd User CocDiagnosticChange call lightline#update()
