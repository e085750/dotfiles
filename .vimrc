set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
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

":Unite {file,file_mru}
"^{p,n}, tab, enter
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neomru.vim')

"required lua. $vim --version | grep lua
call dein#add('Shougo/neocomplete')

"color scheme
call dein#add('tomasr/molokai')

":NERDTreeToggle
"l, i, t, s
call dein#add('scrooloose/nerdtree')

":Errors
call dein#add('scrooloose/syntastic')

"
call dein#add('justmao945/vim-clangyntastic')

"
call dein#add('Shougo/neocomplete.vim')

"
call dein#add('Shougo/neoinclude.vim')

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

syntax on
autocmd colorscheme molokai highlight Visual ctermbg=8
colorscheme molokai
set t_Co=256
