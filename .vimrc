scriptencoding utf-8
set showcmd
set autoindent
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set number
set backspace=indent,eol,start
set ambiwidth=double

"escが遠いの代用する。
inoremap <silent> jj <ESC>
" カーソルの左右移動で行末次の行の行頭への移動が可能になる
set whichwrap=b,s,h,l,<,>,[,],~ 
" カーソルラインをハイライト
set cursorline 
" 行が折り返し表示さいた場合、行単位ではなく表示行単位でカーソルを移動する
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/hiroki/.vim/bundle//repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/hiroki/.vim/bundle')
  call dein#begin('/Users/hiroki/.vim/bundle')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/hiroki/.vim/bundle//repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('flazz/vim-colorschemes')

  " 補完系
  call dein#add('Shougo/neocomplete.vim')
  " indentを視覚化
  call dein#add('nathanaelkane/vim-indent-guides')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

if dein#check_install()
    call dein#install()
endif

"End dein Scripts-------------------------

" pluginの設定----------------------------
" カラースキーム
colorscheme molokai

" 補完系 neocomplete, neosnippetの設定
" Vim起動時にneocompleteを有効にする
let g:neocomplete#enable_at_startup = 1
" smartcase有効化. 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplete#enable_smart_case = 1
" 補完を取り消し
inoremap <expr><C-g>     neocomplete#undo_completion()
" 補完候補の共通部分を補完
inoremap <expr><C-l>     neocomplete#complete_common_string()
" 展開
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)"
" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" indent highligt
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 2
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=blue ctermbg=246
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=gray ctermbg=246

