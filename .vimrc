set tabstop=2
set autoindent
set expandtab
set shiftwidth=2
set hlsearch

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

