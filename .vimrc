set nocompatible
syntax on  "自动语法高亮
set number "显示行号
set cursorline "突出显示当前行
set ruler "打开状态栏标尺
set incsearch "输入搜索内容时就显示搜索结果
set hlsearch  "高亮搜索项"
set autoindent "vim使用自动对齐，把对齐格式应用到下一行(自动缩进）
set smartindent 
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4 
set smartindent 

syntax enable
"colorscheme solarized
colorscheme  molokai
let g:molokai_original = 1
let g:rehash256 = 1
set t_Co=256
set background=dark

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs' "自动不全括号
Plugin 'kien/ctrlp.vim'   "文件搜索
Plugin 'scrooloose/nerdcommenter'  "注释
Plugin 'tell-k/vim-autopep8'  "自动格式化
Plugin 'scrooloose/nerdtree'  "树行目录
Plugin 'Yggdroot/indentLine'  "缩进指示线
Plugin 'altercation/vim-colors-solarized' "vim配色
Plugin 'octol/vim-cpp-enhanced-highlight' "cpp语法高亮
"Plugin 'scrooloose/nerdcommenter' "代码注释插件
call vundle#end()
"filetype plugin indent on

filetype plugin on
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'   
"let g:EclimCompletionMethod = 'omnifunc'
"关闭ycm错误语法提示
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0

"autopep8设置"
let g:autopep8_disable_show_diff=1

"NERDTree配置
"F2开启和关闭树"
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
"显示书签
let NERDTreeShowBookmarks=1
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"窗口大小
let NERDTreeWinSize=25

"缩进配置
let g:indentLine_char=' '
let g:indentLine_enabled = 1

"配色
"let g:solarized_termcolors=256
"let g:solarized_termtrans=0 

set pastetoggle=<F9>

"cpp-enhanced-highlight
""高亮类，成员函数，标准库和模板
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
"文件较大时使用下面的设置高亮模板速度较快，但会有一些小错误
""let g:cpp_experimental_template_highlight = 1"



