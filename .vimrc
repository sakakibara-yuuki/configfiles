call plug#begin('~/.vim/plugged')
" Plug 'digitaltoad/vim-jade'
" Plug 'cakebaker/scss-syntax.vim'
" Plug 'lervag/vimtex'
" Plug 'neoclide/coc.nvim'
" Plug 'Shougo/ddc.vim'
" Plug 'vim-denops/denops.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tomasiser/vim-code-dark'
Plug 'takac/vim-hardtime'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gkeep/iceberg-dark'
Plug 'aperezdc/vim-template'
Plug 'enricobacis/vim-airline-clock'     
Plug 'sirver/ultisnips'
Plug 'vim-scripts/AutoComplPop'
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'
Plug 'juro106/ftjpn'
Plug 'mdlerch/vim-gnuplot'
" Plug 'suan/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'heavenshell/vim-textlint'
Plug 'aklt/plantuml-syntax'
call plug#end()

let $LANG='en_US.UTF-8'

colorscheme codedark

" filetype plugin on
" Uncomment to override defaults:
" let g:instant_markdown_slow = 1
" let g:instant_markdown_autostart = 1
" let g:instant_markdown_open_to_the_world = 1
" let g:instant_markdown_allow_unsafe_content = 1
" let g:instant_markdown_allow_external_content = 1
" let g:instant_markdown_mathjax = 1
" let g:instant_markdown_mermaid = 1
" let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
" let g:instant_markdown_autoscroll = 1
" let g:instant_markdown_port = 8888
" let g:instant_markdown_python = 1

" textlint.vim {{{
" let g:textlint_configs = 
"   \ '@azu/textlint-config-readme',
"   \ '@example/textlint-config-example',
"   \ ]
" }}}


""""""""""""""""""""""""""""""
" powerlineの設定
"""""""""""""""""""""""""""""""
"左側に使用されるセパレータ
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'

" テーマの変更
" let g:airline_theme = 'papercolor' 

" Plug iceberg-darkで入れたテーマ
let g:airline_theme = 'icebergDark'
let g:airline#extensions#whitespace#enabled = 0

" tabを表示する
let g:airline#extensions#tabline#enabled = 1
" clockを表示する
let g:airline#extensions#clock#format = '%H:%M:%S'
let g:airline#extensions#clock#updatetime = 1

""""""""""""""""""""""""""""""
" 各種オプションの設定
""""""""""""""""""""""""""""""
autocmd FileType c setlocal commentstring =//\ %s
autocmd FileType cpp setlocal commentstring =//\ %s
autocmd FileType c++ setlocal commentstring =//\ %s


""""""""""""""""""""""""""""""
" 各種オプションの設定
""""""""""""""""""""""""""""""
" 行番号を表示する
set number

" カーソルが何行目の何列目に置かれているかを表示する
set ruler

" 現在のモードを表示
set showmode

" 入力中のコマンドを表示する
set showcmd

" 対応する括弧やブレースを表示する
set showmatch

" 検索結果をハイライト表示する
set hlsearch

" 検索ワードの最初の文字を入力した時点で検索を開始する
set incsearch

" タブ文字の表示幅
set tabstop=4
" Vimが挿入するインデントの幅
set shiftwidth=4 softtabstop=4 expandtab

" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab

" 構文毎に文字色を変化させる
syntax on

" <C-h> <C-u> <C-h> を有効にする
set backspace=indent,eol,start

" 折り畳む
set foldmethod=indent

" 画面に余裕を持たせてスクロール
set scrolloff=5
" bufferを保存せず次にいける
set hidden

" カーソル位置のハイライト
" set cursorline

" カーソルの相対行
" set relativenumber

filetype plugin on


noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

let g:hardtime_default_on = 1
let g:list_of_normal_keys = ["h", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["h", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = []

" augroup ctags
"   autocmd!
"   autocmd BufWritePost * silent !ctags -R
" augroup END

" let g:lsp_log_verbose = 1
" let g:lsp_log_file = expand('~/vim-lsp.log')
" call lsp#register_server({
"     \ 'name': 'clangd',
"     \ 'cmd': {server_info->['clangd']},
"     \ 'whitelist': ['cpp'],
"     \ })

" オムニ補完設定
" autocmd FileType typescript setlocal omnifunc=lsp#complete

"LSP install
if (executable('clangd'))
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd']},
        \ 'allowlist': ['cpp']
        \ })
endif
let g:lsp_diagnostics_enabled = 0
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> <f2> <plug>(lsp-rename)
endfunction
augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

