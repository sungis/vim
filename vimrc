  call pathogen#infect()


  syntax on
  filetype plugin on
  filetype indent on

  set number
  set autoindent
  set cindent
  set hlsearch
  set history=1000
  set laststatus=2
  set t_Co=256
  colorscheme lucius

  set expandtab
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2

  set encoding=utf-8
  set fileencodings=utf-8,chinese,latin-1
  if has("win32")
    set fileencoding=chinese
  else
    set fileencoding=utf-8
  endif
  language messages zh_CN.utf-8

  set list
  set listchars=trail:+


  set suffixes=.pyc,.pyo
  let NERDTreeIgnore = []
  for suffix in split(&suffixes, ',')
    let NERDTreeIgnore += [ escape(suffix, '.~') . '$' ]
  endfor

  let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
  let g:pydiction_menu_height = 15

  let g:pydoc_cmd = 'python -m pydoc'
  let g:pydoc_open_cmd = 'tabnew'

  let g:vimrc_author='Sungis'
  let g:vimrc_email='mr.sungis@gmail.com'
  let g:vimrc_homepage='http://sungis.github.com'

  map <C-l> :tabn<cr>             "下一个tab
  map <C-h> :tabp<cr>             "上一个tab
  map <C-n> :tabnew<cr>           "新tab
  map <C-j> :tabc<cr>           "关闭tab


  map <C-t> :NERDTreeToggle<CR>
  let g:tagbar_autofocus = 1
  map <F2> :TagbarToggle<CR>
  nnoremap <silent> <F3> :Rgrep<CR>
  "查看几行的字符是不是在同一列上
  map <F9> :call SetColorColumn()<CR>
  function! SetColorColumn()
      let col_num = virtcol(".")
      let cc_list = split(&cc, ',')
      if count(cc_list, string(col_num)) <= 0
          execute "set cc+=".col_num
      else
          execute "set cc-=".col_num
      endif
  endfunction

  " C的编译和运行
  map <F10> :call CompileRunGcc()<CR>
  func! CompileRunGcc()
      exec "w"
      exec "!gcc % -o %<"
      exec "! ./%<"
  endfunc

  " C++的编译和运行
  map <F11> :call CompileRunGpp()<CR>
      func! CompileRunGpp()
      exec "w"
      exec "!g++ % -o %<"
      exec "! ./%<"
  endfunc

  " CtrlP (new fuzzy finder)+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  let g:ctrlp_map = ',e'
  nmap ,g :CtrlPBufTag<CR>
  nmap ,G :CtrlPBufTagAll<CR>
  nmap ,f :CtrlPLine<CR>
  nmap ,m :CtrlPMRUFiles<CR>
  nmap ,c :CtrlPCmdPalette<CR>
  " to be able to call CtrlP with default search text++
  function! CtrlPWithSearchText(search_text, ctrlp_command_end)
      execute ':CtrlP' . a:ctrlp_command_end
      call feedkeys(a:search_text)
  endfunction
  " CtrlP with default text+++
  nmap ,wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>
  nmap ,wG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>
  nmap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>
  nmap ,we :call CtrlPWithSearchText(expand('<cword>'), '')<CR>
  nmap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>
  nmap ,wm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>
  nmap ,wc :call CtrlPWithSearchText(expand('<cword>'), 'CmdPalette')<CR>
  " Don't change working directory+
  let g:ctrlp_working_path_mode = 0
  " Ignore files on fuzzy finder+++
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
    \ 'file': '\.pyc$\|\.pyo$',
    \ }
