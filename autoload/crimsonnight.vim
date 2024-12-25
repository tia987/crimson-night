" =============================================================================
" URL: https://github.com/tia987/crimson-night
" Filename: autoload/crimsonnight.vim
" Author: tia987
" Email: i@tia987.dev
" License: MIT License
" =============================================================================

function! crimsonnight#get_configuration() "{{{
  return {
        \ 'background': get(g:, 'crimsonnight_background', 'medium'),
        \ 'transparent_background': get(g:, 'crimsonnight_transparent_background', 0),
        \ 'dim_inactive_windows': get(g:, 'crimsonnight_dim_inactive_windows', 0),
        \ 'disable_italic_comment': get(g:, 'crimsonnight_disable_italic_comment', 0),
        \ 'enable_italic': get(g:, 'crimsonnight_enable_italic', 0),
        \ 'cursor': get(g:, 'crimsonnight_cursor', 'auto'),
        \ 'sign_column_background': get(g:, 'crimsonnight_sign_column_background', 'none'),
        \ 'spell_foreground': get(g:, 'crimsonnight_spell_foreground', 'none'),
        \ 'ui_contrast': get(g:, 'crimsonnight_ui_contrast', 'low'),
        \ 'show_eob': get(g:, 'crimsonnight_show_eob', 1),
        \ 'float_style': get(g:, 'crimsonnight_float_style', 'bright'),
        \ 'current_word': get(g:, 'crimsonnight_current_word', get(g:, 'crimsonnight_transparent_background', 0) == 0 ? 'grey background' : 'bold'),
        \ 'inlay_hints_background': get(g:, 'crimsonnight_inlay_hints_background', 'none'),
        \ 'lightline_disable_bold': get(g:, 'crimsonnight_lightline_disable_bold', 0),
        \ 'diagnostic_text_highlight': get(g:, 'crimsonnight_diagnostic_text_highlight', 0),
        \ 'diagnostic_line_highlight': get(g:, 'crimsonnight_diagnostic_line_highlight', 0),
        \ 'diagnostic_virtual_text': get(g:, 'crimsonnight_diagnostic_virtual_text', 'grey'),
        \ 'disable_terminal_colors': get(g:, 'crimsonnight_disable_terminal_colors', 0),
        \ 'better_performance': get(g:, 'crimsonnight_better_performance', 0),
        \ 'colors_override': get(g:, 'crimsonnight_colors_override', {}),
        \ }
endfunction "}}}
function! crimsonnight#get_palette(background, colors_override) "{{{
  if a:background ==# 'hard' "{{{
    if &background ==# 'dark'
      let palette1 = {
            \ 'bg_dim':     ['#110b11',   '233'],
            \ 'bg0':        ['#272e33',   '235'],
            \ 'bg1':        ['#2f121d',   '236'],
            \ 'bg2':        ['#4D1829',   '237'],
            \ 'bg3':        ['#6B1F35',   '238'],
            \ 'bg4':        ['#7A223B',   '239'],
            \ 'bg5':        ['#882541',   '240'],
            \ 'bg_visual':  ['#4c3743',   '52'],
            \ 'bg_red':     ['#711629',   '52'],
            \ 'bg_green':   ['#2d7063',   '22'],
            \ 'bg_blue':    ['#89a6d2',   '17'],
            \ 'bg_yellow':  ['#ffb14a',   '136'],
            \ }
    else
      let palette1 = {
            \ 'bg_dim':     ['#110b11',   '233'],
            \ 'bg0':        ['#272e33',   '235'],
            \ 'bg1':        ['#2f121d',   '236'],
            \ 'bg2':        ['#4D1829',   '237'],
            \ 'bg3':        ['#6B1F35',   '238'],
            \ 'bg4':        ['#7A223B',   '239'],
            \ 'bg5':        ['#882541',   '240'],
            \ 'bg_visual':  ['#4c3743',   '52'],
            \ 'bg_red':     ['#711629',   '52'],
            \ 'bg_green':   ['#2d7063',   '22'],
            \ 'bg_blue':    ['#89a6d2',   '17'],
            \ 'bg_yellow':  ['#ffb14a',   '136'],
            \ }
    endif "}}}
  elseif a:background ==# 'medium' "{{{
    if &background ==# 'dark'
      let palette1 = {
            \ 'bg_dim':     ['#110b11',   '233'],
            \ 'bg0':        ['#272e33',   '235'],
            \ 'bg1':        ['#2f121d',   '236'],
            \ 'bg2':        ['#4D1829',   '237'],
            \ 'bg3':        ['#6B1F35',   '238'],
            \ 'bg4':        ['#7A223B',   '239'],
            \ 'bg5':        ['#882541',   '240'],
            \ 'bg_visual':  ['#4c3743',   '52'],
            \ 'bg_red':     ['#711629',   '52'],
            \ 'bg_green':   ['#2d7063',   '22'],
            \ 'bg_blue':    ['#89a6d2',   '17'],
            \ 'bg_yellow':  ['#ffb14a',   '136'],
            \ }
    else
      let palette1 = {
            \ 'bg_dim':     ['#110b11',   '233'],
            \ 'bg0':        ['#272e33',   '235'],
            \ 'bg1':        ['#2f121d',   '236'],
            \ 'bg2':        ['#4D1829',   '237'],
            \ 'bg3':        ['#6B1F35',   '238'],
            \ 'bg4':        ['#7A223B',   '239'],
            \ 'bg5':        ['#882541',   '240'],
            \ 'bg_visual':  ['#4c3743',   '52'],
            \ 'bg_red':     ['#711629',   '52'],
            \ 'bg_green':   ['#2d7063',   '22'],
            \ 'bg_blue':    ['#89a6d2',   '17'],
            \ 'bg_yellow':  ['#ffb14a',   '136'],
            \ }
    endif "}}}
  else "{{{
    if &background ==# 'dark'
      let palette1 = {
            \ 'bg_dim':     ['#110b11',   '233'],
            \ 'bg0':        ['#272e33',   '235'],
            \ 'bg1':        ['#2f121d',   '236'],
            \ 'bg2':        ['#4D1829',   '237'],
            \ 'bg3':        ['#6B1F35',   '238'],
            \ 'bg4':        ['#7A223B',   '239'],
            \ 'bg5':        ['#882541',   '240'],
            \ 'bg_visual':  ['#4c3743',   '52'],
            \ 'bg_red':     ['#711629',   '52'],
            \ 'bg_green':   ['#2d7063',   '22'],
            \ 'bg_blue':    ['#89a6d2',   '17'],
            \ 'bg_yellow':  ['#ffb14a',   '136'],
            \ }
    else
      let palette1 = {
            \ 'bg_dim':     ['#110b11',   '233'],
            \ 'bg0':        ['#272e33',   '235'],
            \ 'bg1':        ['#2f121d',   '236'],
            \ 'bg2':        ['#4D1829',   '237'],
            \ 'bg3':        ['#6B1F35',   '238'],
            \ 'bg4':        ['#7A223B',   '239'],
            \ 'bg5':        ['#882541',   '240'],
            \ 'bg_visual':  ['#4c3743',   '52'],
            \ 'bg_red':     ['#711629',   '52'],
            \ 'bg_green':   ['#2d7063',   '22'],
            \ 'bg_blue':    ['#89a6d2',   '17'],
            \ 'bg_yellow':  ['#ffb14a',   '136'],
            \ }
    endif
  endif "}}}
  if &background ==# 'dark' "{{{
    let palette2 = {
          \ 'fg':         ['#d3c6aa',   '223'],
          \ 'red':        ['#e67e80',   '167'],
          \ 'orange':     ['#e69875',   '208'],
          \ 'yellow':     ['#dbbc7f',   '214'],
          \ 'green':      ['#a7c080',   '142'],
          \ 'aqua':       ['#83c092',   '108'],
          \ 'blue':       ['#7fbbb3',   '109'],
          \ 'purple':     ['#d699b6',   '175'],
          \ 'grey0':      ['#7a8478',   '243'],
          \ 'grey1':      ['#859289',   '245'],
          \ 'grey2':      ['#9da9a0',   '247'],
          \ 'statusline1':['#a7c080',   '142'],
          \ 'statusline2':['#d3c6aa',   '223'],
          \ 'statusline3':['#e67e80',   '167'],
          \ 'none':       ['NONE',      'NONE']
          \ } "}}}
  else "{{{
    let palette2 = {
          \ 'fg':         ['#d3c6aa',   '223'],
          \ 'red':        ['#e67e80',   '167'],
          \ 'orange':     ['#e69875',   '208'],
          \ 'yellow':     ['#dbbc7f',   '214'],
          \ 'green':      ['#a7c080',   '142'],
          \ 'aqua':       ['#83c092',   '108'],
          \ 'blue':       ['#7fbbb3',   '109'],
          \ 'purple':     ['#d699b6',   '175'],
          \ 'grey0':      ['#7a8478',   '243'],
          \ 'grey1':      ['#859289',   '245'],
          \ 'grey2':      ['#9da9a0',   '247'],
          \ 'statusline1':['#a7c080',   '142'],
          \ 'statusline2':['#d3c6aa',   '223'],
          \ 'statusline3':['#e67e80',   '167'],
          \ 'none':       ['NONE',      'NONE']
          \ }
  endif "}}}
  return extend(extend(palette1, palette2), a:colors_override)
endfunction "}}}
function! crimsonnight#highlight(group, fg, bg, ...) "{{{
  execute 'highlight' a:group
        \ 'guifg=' . a:fg[0]
        \ 'guibg=' . a:bg[0]
        \ 'ctermfg=' . a:fg[1]
        \ 'ctermbg=' . a:bg[1]
        \ 'gui=' . (a:0 >= 1 ?
          \ a:1 :
          \ 'NONE')
        \ 'cterm=' . (a:0 >= 1 ?
          \ a:1 :
          \ 'NONE')
        \ 'guisp=' . (a:0 >= 2 ?
          \ a:2[0] :
          \ 'NONE')
endfunction "}}}
function! crimsonnight#syn_gen(path, last_modified, msg) "{{{
  " Generate the `after/syntax` directory.
  let full_content = join(readfile(a:path), "\n") " Get the content of `colors/crimsonnight.vim`
  let syn_conent = []
  let rootpath = crimsonnight#syn_rootpath(a:path) " Get the path to place the `after/syntax` directory.
  call substitute(full_content, '" syn_begin.\{-}syn_end', '\=add(syn_conent, submatch(0))', 'g') " Search for 'syn_begin.\{-}syn_end' (non-greedy) and put all the search results into a list.
  for content in syn_conent
    let syn_list = []
    call substitute(matchstr(matchstr(content, 'syn_begin:.\{-}{{{'), ':.\{-}{{{'), '\(\w\|-\)\+', '\=add(syn_list, submatch(0))', 'g') " Get the file types. }}}}}}
    for syn in syn_list
      call crimsonnight#syn_write(rootpath, syn, content) " Write the content.
    endfor
  endfor
  call crimsonnight#syn_write(rootpath, 'text', "let g:crimsonnight_last_modified = '" . a:last_modified . "'") " Write the last modified time to `after/syntax/text/crimsonnight.vim`
  let syntax_relative_path = has('win32') ? '\after\syntax' : '/after/syntax'
  if a:msg ==# 'update'
    echohl WarningMsg | echom '[crimsonnight] Updated ' . rootpath . syntax_relative_path | echohl None
    call crimsonnight#ftplugin_detect(a:path)
  else
    echohl WarningMsg | echom '[crimsonnight] Generated ' . rootpath . syntax_relative_path | echohl None
    execute 'set runtimepath+=' . fnameescape(fnamemodify(rootpath, ':p')) . 'after'
  endif
endfunction "}}}
function! crimsonnight#syn_write(rootpath, syn, content) "{{{
  " Write the content.
  let syn_path = a:rootpath . '/after/syntax/' . a:syn . '/crimsonnight.vim' " The path of a syntax file.
  " create a new file if it doesn't exist
  if !filereadable(syn_path)
    call mkdir(a:rootpath . '/after/syntax/' . a:syn, 'p')
    call writefile([
          \ "if !exists('g:colors_name') || g:colors_name !=# 'crimsonnight'",
          \ '    finish',
          \ 'endif'
          \ ], syn_path, 'a') " Abort if the current color scheme is not crimsonnight.
    call writefile([
          \ "if index(g:crimsonnight_loaded_file_types, '" . a:syn . "') ==# -1",
          \ "    call add(g:crimsonnight_loaded_file_types, '" . a:syn . "')",
          \ 'else',
          \ '    finish',
          \ 'endif'
          \ ], syn_path, 'a') " Abort if this file type has already been loaded.
  endif
  " If there is something like `call crimsonnight#highlight()`, then add
  " code to initialize the palette and configuration.
  if matchstr(a:content, 'crimsonnight#highlight') !=# ''
    call writefile([
          \ 'let s:configuration = crimsonnight#get_configuration()',
          \ 'let s:palette = crimsonnight#get_palette(s:configuration.background, s:configuration.colors_override)'
          \ ], syn_path, 'a')
  endif
  " Append the content.
  call writefile(split(a:content, "\n"), syn_path, 'a')
  " Add modeline.
  call writefile(['" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:'], syn_path, 'a')
endfunction "}}}
function! crimsonnight#syn_rootpath(path) "{{{
  " Get the directory where `after/syntax` is generated.
  if (matchstr(a:path, '^/usr/share') ==# '') " Return the plugin directory. The `after/syntax` directory should never be generated in `/usr/share`, even if you are a root user.
    return fnamemodify(a:path, ':p:h:h')
  else " Use vim home directory.
    if has('nvim')
      return stdpath('config')
    else
      return expand('~') . '/.vim'
    endif
  endif
endfunction "}}}
function! crimsonnight#syn_newest(path, last_modified) "{{{
  " Determine whether the current syntax files are up to date by comparing the last modified time in `colors/crimsonnight.vim` and `after/syntax/text/crimsonnight.vim`.
  let rootpath = crimsonnight#syn_rootpath(a:path)
  execute 'source ' . rootpath . '/after/syntax/text/crimsonnight.vim'
  return a:last_modified ==# g:crimsonnight_last_modified ? 1 : 0
endfunction "}}}
function! crimsonnight#syn_clean(path, msg) "{{{
  " Clean the `after/syntax` directory.
  let rootpath = crimsonnight#syn_rootpath(a:path)
  " Remove `after/syntax/**/crimsonnight.vim`.
  let file_list = split(globpath(rootpath, 'after/syntax/**/crimsonnight.vim'), "\n")
  for file in file_list
    call delete(file)
  endfor
  " Remove empty directories.
  let dir_list = split(globpath(rootpath, 'after/syntax/*'), "\n")
  for dir in dir_list
    if globpath(dir, '*') ==# ''
      call delete(dir, 'd')
    endif
  endfor
  if globpath(rootpath . '/after/syntax', '*') ==# ''
    call delete(rootpath . '/after/syntax', 'd')
  endif
  if globpath(rootpath . '/after', '*') ==# ''
    call delete(rootpath . '/after', 'd')
  endif
  if a:msg
    let syntax_relative_path = has('win32') ? '\after\syntax' : '/after/syntax'
    echohl WarningMsg | echom '[crimsonnight] Cleaned ' . rootpath . syntax_relative_path | echohl None
  endif
endfunction "}}}
function! crimsonnight#syn_exists(path) "{{{
  return filereadable(crimsonnight#syn_rootpath(a:path) . '/after/syntax/text/crimsonnight.vim')
endfunction "}}}
function! crimsonnight#ftplugin_detect(path) "{{{
  " Check if /after/ftplugin exists.
  " This directory is generated in earlier versions, users may need to manually clean it.
  let rootpath = crimsonnight#syn_rootpath(a:path)
  if filereadable(crimsonnight#syn_rootpath(a:path) . '/after/ftplugin/text/crimsonnight.vim')
    let ftplugin_relative_path = has('win32') ? '\after\ftplugin' : '/after/ftplugin'
    echohl WarningMsg | echom '[crimsonnight] Detected ' . rootpath . ftplugin_relative_path | echohl None
    echohl WarningMsg | echom '[crimsonnight] This directory is no longer used, you may need to manually delete it.' | echohl None
  endif
endfunction "}}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
