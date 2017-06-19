" notes {
"   Author: Gavin
"   Version: 0.1.0
"   Email: tianyu_0723@hotmail.com
" }

" Plugin Install 插件安装 {
    " vundle 说明 {
        " :PluginList       - 列出所有已配置的插件
        " :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
        " :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
        " :PluginClean      - 清除未使用插件,需要确认; 追加 `!`
    " }

    set nocompatible              " 去除VI一致性,必须
    filetype off                  " 必须

    " 设置包括vundle和初始化相关的runtime path
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    " 让vundle管理插件版本,必须
    Plugin 'VundleVim/Vundle.vim'
    " 明亮的配色方案
    Plugin 'tomasr/molokai'
    " 素雅的配色方案
    Plugin 'altercation/vim-colors-solarized'

    " vim 状态栏插件,开箱即用
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'

    " vim 状态栏插件,此插件使用前提是必须用 python 安装
    " Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

    call vundle#end()            " 必须
    filetype plugin indent on    " 必须

" }

" Plugin Setting 插件设置 {
    " Solarized 主题
    let g:solarized_termcolors=16 " 16 | 256
    let g:solarized_termtrans=1 " 0 | 1
    let g:solarized_contrast="normal" " 'normal' | 'high' or 'low'
    let g:solarized_visibility="normal" " 'normal' | 'high' or 'low'

    " airline vim 状态栏设置
    let g:airline_powerline_fonts = 1
    let g:airline_theme='solarized'
" }
