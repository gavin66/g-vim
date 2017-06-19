# g-vim
vim 的简单配置,大量借鉴 [wklken/k-vim](https://github.com/wklken/k-vim) 和 [spf13/spf13-vim](https://github.com/spf13/spf13-vim) ,边学边配置而完成的.

![](https://raw.githubusercontent.com/gavin66/g-vim/master/solarized.png)



# 安装

1. 使用 [Vundle.vim](https://github.com/VundleVim/Vundle.vim) 来管理 vim 插件

   ```sh
   $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
   ```

2. 下载本项目

   ```
   $ git clone https://github.com/gavin66/g-vim.git ~/g-vim
   ```

3. 把项目中的 `vimrc`, `vimrc.bundles` 复制到你的根目录并重命名

   ```sh
   $ cp g-vim/vimrc ~/.vimrc
   $ cp g-vim/vimrc.bundles ~/.vimrc.bundles
   ```

4. 安装插件

   打开 `vim` 执行命令 `:PluginInstall` 来进行安装.

   或者在命令行中执行命令 `vim +PluginInstall +qall` 来一步安装.



# 键位绑定

```sh
# 在配置文件中你会看到 '<leader>', 此为 ',' 键,意为快捷键前置键.

# 配置文件中默认不能使用鼠标操作, 在 'General 一般通用设置' 一节中,可进行配置
set mouse-=a   " 关闭鼠标
set mouse=a    " 开启鼠标

# 退出vim后，内容仍就显示在屏幕上 在 'UI 用户界面展示设置' 一节中,如不需要可注释掉
set t_ti= t_te=

# 默认关闭方向键进行移动(使用 hjkl),可在 'Key (re)Mappings 键位绑定' 一节中配置.
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>


# F 功能键位
F1 						" 废弃这个键,防止调出系统帮助
F2 set nu/nonu 			" 行号开关，用于鼠标复制代码用
F3 set list/nolist 		" 显示可打印字符开关
F4 set wrap/nowrap 		" 换行开关
F5 set paste/nopaste	" 粘贴模式,在插入模式下按 F5,
						" 此时可把代码等多行缩进的文本复制进来,格式不会乱掉
F6 syntax on/off		" 语法开关，关闭语法可以加快大文件的展示
F9 						" tagbar
F10 					" 运行当前文件(quickrun)

# 分屏移动
ctrl + j/k/h/l   进行上下左右窗口跳转,不需要 ctrl+w+jkhl

# 搜索
# 优化搜索,搜索结果保持在屏幕中央
<space> " 空格，进入搜索状态
/       " 同上
,/      " 去除匹配高亮
#       " 正向查找光标下的词
*       " 反向查找光标下的词


# tab 操作
ctrl + t " 新建一个tab
,th    	" 切换到第1个tab
,tl    	" 切换到最后一个tab
,tn    	" 下一个tab
,tp    	" 前一个tab
,td    	" 关闭tab
,te    	" tab edit
,tm    	" tabm
,1     	" 切换到第1个tab
,2     	" 切换到第2个tab
,3     	" 切换到第2个tab
,4     	" 切换到第2个tab
,5     	" 切换到第2个tab
,6     	" 切换到第2个tab
,7     	" 切换到第2个tab
,8     	" 切换到第2个tab
,9     	" 切换到第9个tab
,0     	" 切换到最后一个tab
,tt 	" 最近使用两个tab之间切换

" 其他
Y         " 复制到行尾,等同于y$
,sa       " 全选,等同于 ggVG 
,v        " 选中段落,等同于 V`} 
,y		  " 复制选中区域到系统剪切板中,等用于 "+y
kj        " 等用于 <Esc> 键
,q     	  " 退出vim,等同于 :q  
,w     	  " 保存当前文件,等用于 :w  
,zz 	  " 代码折叠
ctrl + n  " 相对/绝对行号切换
<enter>   " 普通(normal)模式下回车选中当前项
,/  	  " 去除搜索高亮
H 		  " 移动到行头,等用于 ^ 
L         " 移动到行尾,等同于 $ 
;		  " 按下进入命令模式,等用于 : 
ctrl + e  " 向下滚动 2 行
ctrl + y  " 向上滚动 2 行
```
