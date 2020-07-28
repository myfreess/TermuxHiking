"Configure vim for Bash scripting and Markdown
"happy scripting!


"开启语法高亮
syntax on
"set syntax=sh
"搜索高亮
set hlsearch
"Tab4空格
set tabstop=4
"自动缩进
set autoindent
" 自动保存
let autosave=30
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 开启Markdown Magic trick
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
" ice theme
source ~/.vim/ice/colors/iceberg.vim


