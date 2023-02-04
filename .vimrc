call plug#begin('~/.vim/plugged')
""""""intelligence
" Plug 'prabirshrestha/vim-lsp'
" Plug 'prabirshrestha/async.vim'

""""""auto complete
" Plug 'vim-scripts/AutoComplPop'
" Plug 'digitaltoad/vim-jade'
" Plug 'cakebaker/scss-syntax.vim'
" Plug 'lervag/vimtex'
" Plug 'neoclide/coc.nvim'
" Plug 'Shougo/ddc.vim'
" Plug 'vim-denops/denops.vim'

"""""lint 
Plug 'dense-analysis/ale'
Plug 'heavenshell/vim-textlint'
Plug 'nvie/vim-flake8'
Plug 'eslint/eslint'
Plug 'psf/black', { 'branch': 'stable' }

"""""code-style
" Plug 'rhysd/vim-clang-format'

"""""training 
Plug 'takac/vim-hardtime'

"""""themes 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'     
Plug 'cocopon/pgmnt.vim'
Plug 'cocopon/iceberg.vim'
Plug 'dracula/vim'
Plug 'bignimbus/pop-punk.vim'
Plug 'KabbAmine/yowish.vim'
Plug 'haishanh/night-owl.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'

"""""util 
Plug 'preservim/nerdtree'
" Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'aperezdc/vim-template'
" Plug 'sirver/ultisnips'
" Plug 'juro106/ftjpn'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'thinca/vim-quickrun'
Plug 'vim-test/vim-test'
Plug 'hdiniz/vim-gradle'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'dhruvasagar/vim-table-mode'
" Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/dbext.vim'

"""""syntax-highlight
" Plug 'mdlerch/vim-gnuplot'
" Plug 'aklt/plantuml-syntax'
" Plug 'tpope/vim-markdown'
Plug 'pangloss/vim-javascript'

call plug#end()


""""""""""""""""""""""""""""""
" 各種オプションの設定
""""""""""""""""""""""""""""""
"　言語の設定
let $LANG='en_US.UTF-8'

"カラースキーマ(テーマ)を変更する
" colorscheme iceberg
" colorscheme dracula
colorscheme pop-punk
" colorscheme yowish
" colorscheme night-owl
" colorscheme codedark
" colorscheme gruvbox

" backgroundを変更する
set background=dark

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
" set hidden

" ファイルを閉じてもundoを有効にする
set undofile

" スペルチェッカをつける
set spelllang=en_us

" カーソル位置のハイライト
" set cursorline

" clipboardを使用する
set clipboard=unnamed

filetype plugin on


noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


""""""""""""""""""""""""""""""
" blackの設定
"""""""""""""""""""""""""""""""
" augroup black_on_save
"   autocmd!
"   autocmd BufWritePre *.py Black
" augroup end

""""""""""""""""""""""""""""""
" mypyの設定
"""""""""""""""""""""""""""""""
let g:ale_linters = {
    \'python': ['flake8', 'mypy'],
    \'javascript': ['eslint'],
    \'java': ['checkstyle'],
    \}
let g:ale_java_checkstyle_config = '~/.vim/plugged/ale/config/checkstyle.xml'
""""""""""""""""""""""""""""""
" clang-formatの設定
"""""""""""""""""""""""""""""""
let g:clang_format#code_style = "llvm"
let g:clang_format#auto_format = 1

""""""""""""""""""""""""""""""
" markdownの設定
"""""""""""""""""""""""""""""""
" file type plugin on
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

""""""""""""""""""""""""""""""
" textlintの設定
"""""""""""""""""""""""""""""""
" textlint.vim {{{
" let g:textlint_configs = 
"   \ '@azu/textlint-config-readme',
"   \ '@example/textlint-config-example',
"   \ ]
" }}}

""""""""""""""""""""""""""""""
" quickrunの設定
"""""""""""""""""""""""""""""""
let g:quickrun_config = get(g:, 'quickrun_config', {})
let g:quickrun_config._ = {
      \ 'outputter' : 'quickfix',
      \ 'outputter/quickfix/into': 1,
      \ }

let g:quickrun_config.cpp = {
      \ 'command' : 'clang++',
      \ 'cmdopt'  : '-std=c++11',
      \ 'outputter' : 'quickfix',
      \ 'outputter/quickfix/into': 1,
      \ }

let g:quickrun_config.js = {
      \ 'exec' : 'babel %o %s | node',
      \ 'cmdopt'  : '--stage 1',
      \ 'outputter' : 'quickfix',
      \ 'outputter/quickfix/into': 1,
      \ }

" let g:quickrun_config.java = {
"       \   'exec': ['javac -cp %s:p:h:h:h */*.java', 'java -cp %s:p:h:h:h:%s:p:h %s:t:r %a' ],
"       \   'hook/output_encode/encoding': '&termencoding',
"       \   'hook/sweep/files': '%S:p:r.class',
"       \ }

" let g:quickrun_config.java = {
"         \   'exec' : ['javac *.java', '%c %s:t:r']
"         \}
" if %s:t:r in "test 
" 'exec' : [%c org.junit.platform.console.ConsoleLancher %s:t:r -p %s:h]

" test用
" let g:quickrun_config.java = {
"         \   'exec' : ['javac money/*.java', '%c org.junit.platform.console.ConsoleLauncher -p money']
"         \}

""""""""""""""""""""""""""""""
" vim-flake8の設定
"""""""""""""""""""""""""""""""
autocmd BufWritePost *.py call flake8#Flake8()

""""""""""""""""""""""""""""""
" vim-testの設定
"""""""""""""""""""""""""""""""
" make test commands execute using dispatch.vim
let test#strategy = "vimterminal"
let test#vim#term_position = "belowright"
let test#python#runner = 'pytest'
let test#javascript#runner = 'jest'
" let test#java#runner = 'gradletest'

" let test#java#runner = 'maventest'

""""""""""""""""""""""""""""""
" powerlineの設定
"""""""""""""""""""""""""""""""
"左側に使用されるセパレータ
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'

" tabを表示する
let g:airline#extensions#tabline#enabled = 1
" clockを表示する
let g:airline#extensions#clock#format = '%H:%M:%S'
let g:airline#extensions#clock#updatetime = 1

""""""""""""""""""""""""""""""
" ファイルに対するcommnetの設定
""""""""""""""""""""""""""""""
autocmd FileType c setlocal commentstring =//\ %s
autocmd FileType cpp setlocal commentstring =//\ %s
autocmd FileType c++ setlocal commentstring =//\ %s

""""""""""""""""""""""""""""""
"hardtimeの設定
""""""""""""""""""""""""""""""
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
" if (executable('clangd'))
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'clangd',
"         \ 'cmd': {server_info->['clangd']},
"         \ 'allowlist': ['cpp']
"         \ })
" endif
" let g:lsp_diagnostics_enabled = 0
" function! s:on_lsp_buffer_enabled() abort
"     setlocal omnifunc=lsp#complete
"     nmap <buffer> gd <plug>(lsp-definition)
"     nmap <buffer> <f2> <plug>(lsp-rename)
" endfunction
" augroup lsp_install
"     au!
"     autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
" augroup END
"
"

let g:alpha_lower = 'abcdefghijklmnopqrstuvwxyz'
let g:alpha_upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
let g:digits = '0123456789'
let g:alpha_all = g:alpha_lower .. g:alpha_upper
let g:alnum = g:alpha_all .. g:digits

function! s:clear_regs() abort
  for r in split(g:alnum .. '/', '\zs')
    call setreg(r, [])
  endfor
endfunction
command! ClearRegs call s:clear_regs()
" autocmd VimEnter * ++once ClearRegs
