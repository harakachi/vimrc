set number             "行番号を表示
set autoindent         "改行時に自動でインデントする
set tabstop=2          "タブを何文字の空白に変換するか
set shiftwidth=2       "自動インデント時に入力する空白の数
set expandtab          "タブ入力を空白に変換
set splitright         "画面を縦分割する際に右に開く
set clipboard=unnamed  "yank した文字列をクリップボードにコピー
set hls                "検索した文字をハイライトする

set ignorecase
set smartcase
set wrapscan
set incsearch

set laststatus=2

nnoremap <silent> <S-l> :vsplit<CR>
inoremap <silent> jj <ESC>:<C-u>w<CR>

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/harada/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/harada/.cache/dein')
  call dein#begin('/Users/harada/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/harada/.cache/dein/repos/github.com/Shougo/dein.vim')

  let g:config_dir  = expand('~/.config/nvim/bundles/dein')
  let s:toml        = g:config_dir . '/dein.toml'
  let s:lazy_toml   = g:config_dir . '/dein_lazy.toml'

  " TOML 読み込み
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------

"set background=dark
colorscheme Tomorrow-Night-Bright
syntax on
