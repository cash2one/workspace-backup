" 定义快捷键的前缀，即<Leader>
let mapleader=";"

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu


" 开启语法高亮功能
syntax enable
" " 允许用指定语法高亮配色方案替换默认方案
syntax on
" 配色方案
set background=dark
"colorscheme material
"colorscheme kkruby
"colorscheme vendetta
"colorscheme deepsea
"colorscheme xoria256
colorscheme railscasts
"colorscheme two2tango
"colorscheme solarized
"colorscheme gruvbox
"colorscheme jellybeans
"let g:hybrid_use_Xresources = 1
"colorscheme hybrid

"colorscheme phd
"colorscheme molokai
"let g:molokai_original = 1
"let g:rehash256 = 1
" seoul256 (dark):
" "   Range:   233 (darkest) ~ 239 (lightest)
" "   Default: 237
"let g:seoul256_background = 235
"colo seoul256
"
" " seoul256 (light):
" "   Range:   252 (darkest) ~ 256 (lightest)
" "   Default: 253
"let g:seoul256_background = 256
"colo seoul256
"
"======== tmux config ==========
"设置VIM的配色方案和shell一致
if exists('$TMUX')
    set term=screen-256color
endif

"======== /tmux config ==========


" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T


" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
"set cursorcolumn
" 高亮显示搜索结果
set hlsearch
" 禁止折行
set nowrap

" 自适应不同语言的智能缩进
filetype indent on
" " 将制表符扩展为空格
set expandtab
" " 设置编辑时制表符占用空格数
set tabstop=4
" " 设置格式化时制表符占用空格数
set shiftwidth=4
" " 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4



set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" " Git plugin not hosted on GitHub
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mattn/emmet-vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'mileszs/ack.vim'
Plugin 'KohPoll/vim-less'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'leafgarland/typescript-vim'

" styles
Plugin 'Lokaltog/vim-powerline'
Plugin 'junegunn/seoul256.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'phd'
Plugin 'morhetz/gruvbox'
Plugin 'nanotech/jellybeans.vim'
Plugin 'w0ng/vim-hybrid'

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'

Bundle 'vim-scripts/taglist.vim'
" " git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

let g:Powerline_colorscheme='solarized256'
"let g:Powerline_symbols = 'fancy'



" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" " 从第二层开始可视化显示缩进
"let g:indent_guides_start_level=2
" " 色块宽度
let g:indent_guides_guide_size=1
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

"快捷键
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" " 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" " 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" " 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" " 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>wq :wa<CR>:q<CR>
" " 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" " 依次遍历子窗口
" nnoremap nw <C-W><C-W>
" " 跳转至右方的窗口
" nnoremap <Leader>lw <C-W>l
" " 跳转至方的窗口
" nnoremap <Leader>hw <C-W>h
" " 跳转至上方的子窗口
" nnoremap <Leader>kw <C-W>k
" " 跳转至下方的子窗口
" nnoremap <Leader>jw <C-W>j
" " 定义快捷键在结对符之间跳转，助记pair
" nmap <Leader>pa %

"折叠
" 基于缩进或语法进行代码折叠
set foldmethod=manual
"set foldmethod=syntax
" " 启动 vim 时关闭折叠代码
"set nofoldenable

" Tagbar
" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_left=1 
" " 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list 
nnoremap <Leader>tt :TagbarToggle<CR> 
" " 设置标签子窗口的宽度 
let tagbar_width=32 
" " tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1

"NERDtree
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>ls :NERDTreeToggle<CR>
" " 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" " 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" " 显示隐藏文件
let NERDTreeShowHidden=1
" " NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" " 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

let g:user_emmet_install_global = 0
autocmd FileType html,css,php EmmetInstall
let g:user_emmet_leader_key='<C-Z>'

" Taglist
nnoremap <Leader>tl :TlistToggle<CR>
let Tlist_File_Fold_Auto_Close = 1 "当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来。
"let Tlist_Show_One_File=0    "只显示当前文件的tags
let Tlist_WinWidth=30        "设置taglist宽度
let Tlist_Exit_OnlyWindow=1  "tagList窗口是最后一个窗口，则退出Vim
let Tlist_Use_Left_Window=1 "在Vim窗口右侧显示taglist窗口
"end

Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_open_multiple_files = 'v'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
     \ 'dir':  '\v[\/]\.(git|hg|svn)$',
     \ 'file': '\v\.(exe|so|dll|jpg|png|gif|bmp|jpeg)$',
     \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
     \ }
"end

"jellybeans
let g:jellybeans_use_lowcolor_black = 0


"Markdown
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_no_default_key_mappings=1
let g:vim_markdown_frontmatter=1

let vim_markdown_preview_browser='Firefox'
let vim_markdown_preview_temp_file=1
let vim_markdown_preview_toggle=2

" 重启后撤销历史可用 persistent undo 
set undofile
set undodir=$VIMFILES/\_undodir
set undolevels=1000 "maximum number of changes that can be undone
set noswapfile
set nobackup

"imap <C-I> <Esc>
"map <C-V> <Esc>
"
"YouCompleteMe
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_key_list_previous_completion = ['<Up>']
"let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2 " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
nnoremap <leader>bb :lopen<CR> "open locationlist
nnoremap <leader>bc :lclose<CR>    "close locationlist
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR> "跳转到声明
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR> "跳转到定义
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR> "以上两者的合体
