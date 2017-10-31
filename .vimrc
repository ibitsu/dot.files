"neobundle
filetype off
if has('vim_starting')
  set runtimepath+=~/.bundle/neobundle.vim
  call neobundle#rc(expand('~/.bundle'))
  filetype plugin on
  filetype indent on
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
"NeoBundle 'Shougo/neocomplcache-snippets-complete'
NeoBundle 'https://github.com/Shougo/neosnippet'
NeoBundle 'mattn/zencoding-vim'
"NeoBundle 'git://github.com/mattn/zencoding-vim.git'
NeoBundle 'git://github.com/thinca/vim-quickrun.git'
NeoBundle 'git://github.com/thinca/vim-ref.git'
NeoBundle "git://github.com/vim-scripts/sudo.vim.git"
NeoBundle "https://github.com/jamessan/vim-gnupg.git"
NeoBundle 'taichouchou2/surround.vim'
NeoBundle 'open-browser.vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'tell-k/vim-browsereload-mac'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'taichouchou2/html5.vim'
NeoBundle 'taichouchou2/vim-javascript' " jQuery syntax追加
NeoBundle 'kchmck/vim-coffee-script'

syntax on

if &term =~ "xterm-256color"
	colorscheme desert256
	" omini..
	highlight Pmenu ctermbg=8
	highlight PmenuSel ctermbg=12
	highlight PmenuSbar ctermbg=0
endif

highlight ZenkakuSpace ctermbg=6
match ZenkakuSpace /\s\+$\|　/

syntax match Tab /\t/
hi Tab gui=underline guifg=blue ctermbg=blue

"ポップアップ補完メニュー色設定（通常の項目、選択されている項目、スクロールバー、スクロールバーのつまみ部分）
highlight Pmenu ctermbg=6 guibg=#4c745a
highlight PmenuSel ctermbg=3 guibg=#d4b979
highlight PmenuSbar ctermbg=0 guibg=#333333
"highlight PmenuThumb ctermbg=0 guibg=Red


set listchars=tab:>.
set list

set directory=~/.swp
let g:hatena_user          = 'ibitsu'

let g:changelog_timeformat = "%Y-%m-%d"
let g:changelog_username   = "ibitsu <shun@ibitsu.net>"
let g:changelog_date_end_entry_search = '^\s*$'

let g:Perl_AuthorName      = 'ibitsu'
let g:Perl_AuthorRef       = ''
let g:Perl_Email           = 'shun@ibitsu.net'
let g:Perl_Company         = ''

" zsh っぽい補完に
"
set wildmode=longest,list

" ちゃんと文字書いて○とか
set ambiwidth=double

" ポップアップメニューをよしなに
set completeopt=menu,preview,longest,menuone

" 補完候補の設定
set complete=.,w,b,u,k

" バックアップとか自分でしろ
set nobackup

" 誰かが編集したら読み直して
set autoread

" 袖あまりは良いものだ
set scrolloff=10000000
" 行番号の表示
set number
" デフォルトインデント設定
set autoindent smartindent
" よさげなタブ
set smarttab
set softtabstop=2 tabstop=2 shiftwidth=2
" BS の挙動
set backspace=indent,eol,start

" よしなにしてくれ
set ignorecase smartcase
" インクメンタル
set incsearch
" 最初にもどれ
set wrapscan

" 対応する括弧の表示
set showmatch
" 入力中のコマンドを表示
set showcmd

" 行頭・行末間移動を可能に
set whichwrap=b,s,h,l,<,>,[,]

" 補完候補を表示する
set wildmenu

" ステータス表示用変数
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']['.&ft.']'}%=%l,%c%V%8P

set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,cp932,euc-jp,iso-2022-jp

set hidden

filetype plugin on
filetype indent on

" mapping

nnoremap j gj
nnoremap k gk
" nmap gb :ls<CR>:buf 

" sort css property (id:secondlife)
nmap gso vi{:!sortcss<CR>
vmap gso i{:!sortcss<CR>


" encoding
nmap <silent> eu :set fenc=utf-8<CR>
nmap <silent> ee :set fenc=euc-jp<CR>
nmap <silent> es :set fenc=cp932<CR>

" encode reopen encoding
nmap <silent> eru :e ++enc=utf-8 %<CR>
nmap <silent> ere :e ++enc=euc-jp %<CR>
nmap <silent> ers :e ++enc=cp932 %<CR>


"for yanktmp.vim
map <silent> sy :call YanktmpYank()<CR>
map <silent> sp :call YanktmpPaste_p()<CR>
map <silent> sP :call YanktmpPaste_P()<CR>

" redraw map
nmap <silent> sr :redraw!<CR>

" cmode
cmap <ESC>h <Left>
cmap <ESC>l <Right>

"if has("mac")
	map <silent> sY :call YankPB()<CR>
	function! YankPB()
		let tmp = tempname()
		call writefile(getline(a:firstline, a:lastline), tmp, 'b')
		silent exec ":!cat " . tmp . " | nkf -s | pbcopy"
	endfunction
"endif

" execute script
nmap ,e :call ShebangExecute()<CR>

" indent whole buffer
noremap <F8> gg=G``

" xml close tag comp
" autocmd FileType html,xhtml,xml :inoremap </ </<C-X><C-O>

" insert timestamp
nmap tw :exe "normal! i" . strftime("%Y-%m-%d\T%H:%M:%S+09:00")<CR>

nmap bg :BufferExplorer<CR>
nmap bG :FilesystemExplorerFromHere<CR>
nmap gb :FilesystemExplorer<CR>
nmap br :FuzzyFinderMru<CR>

augroup MyAutocmd
	au!
	autocmd BufWritePost * if getline(1) =~ "^#!" | exe "silent !chmod +x %" | endif
	autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | silent! exe '!echo -n "k%\\"' | endif
	
	" YAML setting
	autocmd FileType yaml set expandtab ts=2 sw=2 enc=utf-8 fenc=utf-8

	" auto cd
	" autocmd BufEnter * exe ":lcd \"" . expand("%:p:h") . "\""
	
augroup END


" flex
augroup Fcsh
	au!
"	autocmd BufWritePost *.{as,mxml} call FcshCall()
augroup END

function! FcshCall()
	let ret = system('ruby -rdrb/drb -e "puts DRbObject.new_with_uri(''druby://localhost:8787'').call(ARGV[0])"  "'.expand("%:p").'"')
	if matchstr(ret, 'Error') != ""
		echo ret
	endif
endfunction


function! ShebangExecute()
	let m = matchlist(getline(1), '#!\(.*\)')
	if(len(m) > 2)
		execute '!'. m[1] . ' %'
	else
		execute '!' &ft ' %'
	endif
endfunction

" vim -b : edit binary using xxd-format!
augroup Binary
	au!
	au BufReadPre  *.bin let &bin=1
	au BufReadPost *.bin if &bin | silent %!xxd -g 1
	au BufReadPost *.bin set ft=xxd | endif
	au BufWritePre *.bin if &bin | %!xxd -r
	au BufWritePre *.bin endif
	au BufWritePost *.bin if &bin | silent %!xxd -g 1
	au BufWritePost *.bin set nomod | endif
augroup END

"----------------------------------------
" zencoding
"----------------------------------------
"{{{
" codaのデフォルトと一緒にする
imap <C-E> <C-Y>,
let g:user_zen_leader_key = '<C-Y>'
" 言語別に対応させる
let g:user_zen_settings = {
      \  'lang' : 'ja',
      \  'html' : {
      \    'filters' : 'html',
      \    'indentation' : ' '
      \  },
      \  'css' : {
      \    'filters' : 'fc',
      \  },
      \}
"}

"----------------------------------------
" open-browser.vim
"----------------------------------------
" カーソル下のURLをブラウザで開く
nmap <Leader>o <Plug>(openbrowser-open)
vmap <Leader>o <Plug>(openbrowser-open)
" ググる
nnoremap <Leader>g :<C-u>OpenBrowserSearch<Space><C-r><C-w><Enter>

"----------------------------------------
" vim-browsereload-mac
"----------------------------------------
" リロード後に戻ってくるアプリ 変更してください
let g:returnApp = "Terminal"
nmap <Space>bc :ChromeReloadStart<CR>
nmap <Space>bC :ChromeReloadStop<CR>
nmap <Space>bf :FirefoxReloadStart<CR>
nmap <Space>bF :FirefoxReloadStop<CR>
nmap <Space>bs :SafariReloadStart<CR>
nmap <Space>bS :SafariReloadStop<CR>
nmap <Space>bo :OperaReloadStart<CR>
nmap <Space>bO :OperaReloadStop<CR>
nmap <Space>ba :AllBrowserReloadStart<CR>
nmap <Space>bA :AllBrowserReloadStop<CR>

"----------------------------------------
" vim-css3-syntax, vim-javascript, html5.vim
"----------------------------------------
" HTML 5 tags
syn keyword htmlTagName contained article aside audio bb canvas command
syn keyword htmlTagName contained datalist details dialog embed figure
syn keyword htmlTagName contained header hgroup keygen mark meter nav output
syn keyword htmlTagName contained progress time ruby rt rp section time
syn keyword htmlTagName contained source figcaption
syn keyword htmlArg contained autofocus autocomplete placeholder min max
syn keyword htmlArg contained contenteditable contextmenu draggable hidden
syn keyword htmlArg contained itemprop list sandbox subject spellcheck
syn keyword htmlArg contained novalidate seamless pattern formtarget
syn keyword htmlArg contained formaction formenctype formmethod
syn keyword htmlArg contained sizes scoped async reversed sandbox srcdoc
syn keyword htmlArg contained hidden role
syn match   htmlArg "\<\(aria-[\-a-zA-Z0-9_]\+\)=" contained
syn match   htmlArg contained "\s*data-[-a-zA-Z0-9_]\+"
"----------------------------------------


" {{{ Autocompletion using the TAB key

" This function determines, wether we are on the start of the line text (then tab indents) or
" if we want to try autocompletion
function! InsertTabWrapper()
	let col = col('.') - 1
	if !col || getline('.')[col - 1] !~ '\k'
		return "\<TAB>"
	else
		if pumvisible()
			return "\<C-N>"
		else
			return "\<C-N>\<C-P>"
		end
	endif
endfunction
" Remap the tab key to select action with InsertTabWrapper
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

" }}} Autocompletion using the TAB key

set iminsert=0 imsearch=0

" autocomplpop.vim をつかうように
" Thanks ns9tks
" http://subtech.g.hatena.ne.jp/cho45/20071009#c1191925480
"set completeopt=menuone,preview
"function! CompleteWithoutInsert()
"	return "\<C-n>\<C-r>=pumvisible() ? \"\\<C-P>\\<C-N>\\<C-P>\": \"\"\<CR>"
"endfunction
"inoremap <expr> <C-n> pumvisible() ? "\<C-n>" : CompleteWithoutInsert()
"" 小文字入力で常にメニューだす
"let letter = "a"
"while letter <=# "z"
"	execute 'inoremap <expr> ' letter ' "' . letter . '" . (pumvisible() ? "" : CompleteWithoutInsert())'
"	let letter = nr2char(char2nr(letter) + 1)
"endwhile
"inoremap . .<ESC>a
"inoremap ( (<ESC>a
"inoremap [ [<ESC>a

set lazyredraw
inoremap <expr> <CR> pumvisible() ? "\<C-Y>\<CR>" : "\<CR>"

let g:AutoComplPop_CompleteOption = '.,w,b,k'

au BufNewFile,BufRead *.io setf io


