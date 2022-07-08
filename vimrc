"""""
 """
  "
 """
"""""


if has('win32')
  call plug#begin('~/vimfiles/plugged')
  Plug 'junegunn/fzf'
elseif has('unix')
  call plug#begin('~/.vim/plugged')
  Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
elseif has('mac')
endif

Plug 'preservim/nerdtree'                             " 目录树

" Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }    " 快速查找
Plug 'voldikss/vim-floaterm'                          " 浮动终端
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rafi/awesome-vim-colorschemes'
"Plug 'itchyny/lightline.vim'               " 底部状态栏高亮
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdcommenter'             " 快速注释
Plug 'jiangmiao/auto-pairs'                " 添加括号
" Plug 'gcmt/wildfire.vim'                   "代码块选择工具
Plug 'mg979/vim-visual-multi', {'branch': 'master'} "多光标
Plug 'voldikss/vim-translator'             "translate
Plug 'terryma/vim-expand-region'           "扩展选区
Plug 'rust-lang/rust.vim'                  "Rust
Plug 'sirius-fan/change-colorscheme'           "快速更改主题


" On-demand lazy load
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

" To register the descriptions when using the on-demand load feature,
" use the autocmd hook to call which_key#register(), e.g., register for the Space key:
" autocmd! User vim-which-key call which_key#register('<Space>','g:which_key_map')

Plug 'tpope/vim-rsi'   "插入模式下的readline，Emacs

Plug 'yianwillis/vimcdoc'


call plug#end()



" ==========nerdtree目录树===========
"shortcut
map <C-a> :NERDTreeToggle<CR>

" autocmd vimenter * NERDTree  "自动开启Nerdtree
let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
" let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
"打开vim时如果没有文件自动打开NERDTree
" autocmd vimenter * if !argc()|NERDTree|endif
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 设置树的显示图标
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
let g:NERDTreeShowLineNumbers=0 " 是否显示行号
let g:NERDTreeHidden=0     "不显示隐藏文件
""Making it prettier
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1
" ==================================





"===========theme==============================
" colorscheme onedark
colorscheme one

" colorscheme pink-moon
" colorscheme seoul256
" set background=dark " for the dark version
set background=light " for the light version
"===============================================




"===============for zh=============================================
" 设置中文提示
language messages zh_CN.utf-8
" 设置中文帮助
set helplang=cn

" Gvim中文菜单乱码解决方案
" 设置文件编码格式
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1,gbk,gb18030,gk2312
if has("win32")
 set fileencoding=chinese
else
 set fileencoding=utf-8
endif
set fileencoding=utf-8  "改过系统默认后,默认为Unicode吧

"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"解决consle提示信息输出乱码
language messages zh_CN.utf-8
"=================================================================






"======================airline-config================================
" 总是显示状态栏
let laststatus = 2
" let g:airline_powerline_fonts = 1   " 使用powerline打过补丁的字体
" let g:airline_theme="violet"      " 设置主题
" let g:airline_theme="deus"
let g:airline_theme="one"
" let g:airline_theme="silver"
"开启tabline
let g:airline#extensions#tabline#enabled = 1
"tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
"tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
"tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 0

let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'default'

let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1

" 不显示右上角buffer和tab
let g:airline#extensions#tabline#show_tab_type = 0

"
" if !exists('g:airline_symbols')
"     let g:airline_symbols={}
" endif
" " 关闭空白符检测   ? 空格检测
" let g:airline#extensions#whitespace#enabled=0


""""""""""""""""""""""""""""""""""""""""""
""" airline设置 TODO:clean up
""""""""""""""""""""""""""""""""""""""""""

let g:airline_section_b = '%{getcwd()}' " in section B of the status line display the CWD

"TABLINE:

"let g:airline#extensions#tabline#enabled = 1           " enable airline tabline
" let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline
" let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
" let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)
"let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab
"let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right
"let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline
"let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline
"let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline
"let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers
"let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline


" ===========================================================




"=========================rainbow=======================
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
"=======================================================

" Fuzzy Finder
nmap <leader>fz :FZF<CR>
nmap <leader>ff :FZF<Space>



"==============================gui=======================================
" 字体
if has("gui_running")
  set lines=28 columns=108 "设置初始行列数，仅GUI生效
  set guioptions-=r  " 去除滚动
  set guioptions-=T  "去除工具栏
  set guioptions-=L  "左侧滚动
  set guioptions-=m  "去除菜单
  if has("gui_gtk3")
    "set guifont=Inconsolata\ 12
    set guifont=MesloLGL\ Nerd\ Font\ Mono\ 15
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    " set guifont=DroidSansMono\ NF:h14:cANSI
    set guifontwide=黑体:h14    
    set guifont=Fira\ Code:h14:cANSI
    map <F11> :call libcallnr("gvimtogglefullscreen.dll", "toggle_full_screen", 0)<CR>
    " map <F11> :call libcallnr("gvimtogglefullscreen.dll", "toggle_full_screen", 0)<CR><ESC>:set guioptions-=m<cr>

    " toggle fullscreen mode by pressing F11
    " noremap <f11> <esc>:call libcallnr('gvim_fullscreen.dll', 'ToggleFullscreen', 0)<cr>:set guioptions-=TrLm<cr>
    " toggle window transparency to 247 or 180 by pressing F12
    noremap <f12> <esc>:call libcallnr('gvim_fullscreen.dll', 'ToggleTransparency', "247,200")<cr>
  endif
endif
"======================================================================




"=============================nerdcommenter配置=========================
"<leader>cc快捷键进行注释选中的行，<leader>cu进行反注释。 或者 <\>+<c>+<space>
"n<\>cc : 为光标以下 n 行添加注释
"n<\>cu : 为光标以下 n 行取消注释
"n<\>cm : 为光标以下 n 行添加块注释
" >>>>>>>vim中  ctrl+非字母 不能映射，Ctrl+Shift+其他  也不能。
"map <C-/> <Leader>c<Space>
"map <C-/> <plug>NERDCommenterToggle


"add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" python 自动的会多加一个空格
au FileType python let g:NERDSpaceDelims = 0

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
"=========================================================================


" +================================== coc.nvim  ======================================+ "
" TextEdit might fail if hidden is not set.
set hidden

" 取消备份文件 Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" 命令行高度 Give more space for displaying messages.
"set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
" 大概lsp更新时间
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion. 同为补全,但是会跳到第一个,并且没有navigate
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
" 使用回车<enter><cr><return>选择第一项
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics  切换报错信息
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" :CocDiagnostics 展示所有诊断，下面有快捷键
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
" 貌似不起作用
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming. 重构用重命名
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code. 格式化
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" TODO 不理解 codeaction
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
" TODO 不理解 注释掉
" xmap if <Plug>(coc-funcobj-i)
" omap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap af <Plug>(coc-funcobj-a)
" xmap ic <Plug>(coc-classobj-i)
" omap ic <Plug>(coc-classobj-i)
" xmap ac <Plug>(coc-classobj-a)
" omap ac <Plug>(coc-classobj-a)
"
" Remap <C-f> and <C-b> for scroll float windows/popups. 针对nvim的浮动窗口
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
" 类似vscode单次 Ctrl-D
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
"=======================================================================================

"========================================================
"Mode Settings

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar


"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"====================================================


"=========================other=============================

"用空格键来开关折叠（说明西方“"”后面的内容为注释，不会被VIM所识别）
"set foldenable
"set foldmethod=indent  "按缩进
"set foldmethod=syntax  "按语法
"nnoremap <enter> za
"nmap <space> za
" "nnoremap @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')



" 解决插入模式下delete/backspce键失效问题
set backspace=2
" 能使用鼠标交互
set mouse=a

set number "显示行号

"共享剪切板
set clipboard+=unnamed

" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>

" 清空缓冲区 关闭buffer  还可以使用 ctrl-v 块选择
nmap <C-q> :bwipe<CR>


set t_Co=256
set lazyredraw


" 设置历史命令数目(手动设置？)
set history=1000

" 设置符号可视
" set invlist

" set paste

" set nocompatible
" The character which starts command-line completion defaults to Tab only when nocompatible is set. In Vi compatible mode it's CTRL-E


" exit all
:command -nargs=0 Q :qall


" 主题切换
nnoremap <silent> <F10> :NextColorScheme<cr>

"float terminal
" let g:floaterm_keymap_new    = '<F7>'
" let g:floaterm_keymap_prev   = '<F8>'
" let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F9>'
" Close window if the job exits normally, otherwise stay it with messages like [Process exited 101]
let g:floaterm_autoclose = 2 
if has("win32")
  let g:floaterm_shell = 'pwsh'
endif
"命令提示
set wildmode=list:longest,full


" https://www.zhihu.com/question/19643925
" 插入模式下
" Ctrl + H 光标移当前行行首
imap <c-h> <ESC>I
" Ctrl + J 光标移下一行行首
imap <c-j> <ESC><Down>I
" Ctrl + K 光标移上一行行尾
imap <c-k> <ESC><Up>A
" Ctrl + L 光标移当前行行尾
imap <c-l> <ESC>A
" Alt + H 光标左移一格
imap <m-h> <Left>
" Alt + J 光标下移一格
imap <m-j> <Down>
" Alt + K 光标上移一格
imap <m-k> <Up>
" Alt + L 光标右移一格
imap <m-l> <Right>

