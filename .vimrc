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

" <Space>を無効化
nnoremap <Space> <Nop>
" <Leader>を<Space>に変更
let mapleader = "\<Space>"
" <Space>wで保存
nnoremap <Leader>w :w<CR>
" <Space>qで終了
nnoremap <Leader>q :q<CR>
" qで終了
nnoremap q :q<CR>
" <Space>fで保存して終了
nnoremap <Leader>f :wq<CR>

" スペース2回でカーソル下の単語をハイライトする
nnoremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>

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

  " tomlの
  let g:config_dir = expand('~/dot-files')
  let s:toml = g:config_dir . '/dein.toml'
  let s:lazy_toml = g:config_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})


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
