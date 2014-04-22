set tabstop=2
set autoindent
set expandtab
set shiftwidth=2

"ノーマルモードの<C-^>を無効化
nnoremap <silent> <C-^> <Nop>


if has('multi_byte_ime')
  highlight Cursor guifg=#000d18 guibg=#8faf9f gui=bold
  highlight CursorIM guifg=NONE guibg=#ecbcbc
endif

"### Tera TermでIME制御
"" http://ttssh2.sourceforge.jp/manual/ja/usage/tips/vim.html
"## 挿入モードから抜けた時に IME をオフにし、再度挿入モードに入った時に IME
"の状態を元に戻す
"let &t_SI .= "\e[<r"
"let &t_EI .= "\e[<s\e[<0t"
"let &t_te .= "\e[<0t\e[<s"
"set timeoutlen=100
""## 挿入モードでの ESC キーを押した後の待ちを無くす
"let &t_SI .= "\e[?7727h"
"let &t_EI .= "\e[?7727l"
inoremap <special> <Esc>O[ <Esc>
"## GNU Screenとの併用
if &term == "screen"
let &t_SI .= "\eP\e[3 q\e\\"
let &t_EI .= "\eP\e[1 q\e\\"
else
"let &t_SI .= "\e[3 q"
"let &t_EI .= "\e[1 q"
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
