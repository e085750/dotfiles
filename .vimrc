set tabstop=2
set autoindent
set expandtab
set shiftwidth=2
set hlsearch
set paste

"ノーマルモードの<C-^>を無効化
nnoremap <silent> <C-^> <Nop>


if has('multi_byte_ime')
  highlight Cursor guifg=#000d18 guibg=#8faf9f gui=bold
  highlight CursorIM guifg=NONE guibg=#ecbcbc
endif


"### gVim IME常時無効化設定
" http://blog.blueblack.net/item_393
"## 「imdisable」オプション
augroup InsModeAu
autocmd!
"autocmd InsertEnter,CmdwinEnter * set noimdisable
"autocmd InsertLeave,CmdwinLeave * set imdisable
augroup END
"## IME状態に応じたカーソル色を設定
if has('multi_byte_ime')
highlight Cursor guifg=#000d18 guibg=#8faf9f
gui=bold
highlight CursorIM guifg=NONE guibg=#ecbcbc
endif

syntax enable

set timeoutlen=100

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.vim/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" You can specify revision/branch/tag.
"call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
call dein#add('Shougo/vimshell')

call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neocomplete')
call dein#add('tomasr/molokai')
call dein#add('scrooloose/nerdtree')
call dein#add('scrooloose/syntastic')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

