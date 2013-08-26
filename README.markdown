My VIM setup
===========

To install
----------

```
cd ~
git clone https://github.com/sungis/vim.git .vim
ln -s .vim/.vimrc

O 模式    （Vim 默认: CTRL-X CTRL-O） -- 全能补全，由一个自定义函数生成补全列表
n 模式    （Vim 默认: CTRL-N）        -- 关键字补全，查找 'complete' 选项指定文件中的匹配单词，组成补全列表
Tab 模式   调用 pydiction complete-dict


pydiction.py
============
Note: You can skip this section if you don't plan to add more modules to complete-dict yourself.  Check if complete-dict already has the modules you intend to use.

This is the Python script used to create the "complete-dict" Vim dictionary file.  I have created and bundled a default complete-dict for your use. I created it using Ubuntu 9.04 Linux, so there won't be any real win32 specific support in it. You're free to run pydiction.py to add, or upgrade, as modules as you want.  The dictionary file will still work if you're using windows, but it won't complete win32 related modules unless you tell it to.      

Usage: In a command prompt, run:

    $ python pydiction.py module ... [-v]


Install
=====
sudo apt-get install ctags
apt-get install python-dev
sudo apt-get install -y vim-* 
sudo pip install pep8

http://sourceforge.net/projects/pyclewn/
cd ./pyclewn-1.10/
sudo python setup.py install

Finished :D

PEP8
=====
1.sudo pip install pep8
2.到http://www.vim.org/scripts/script.php?script_id=2914下载最新版本的插件，
    放到~/.vim/ftplugin/python/目录下
3. 打开vim,输入:filetype，看看plugin是否ON。如果不是，
    编辑~/.vimrc，加入filetype plugin on这行
4. 用vim打开一个.py文件，按F5看看是否有Quickfix
   List出现，或者左下角是否有提示”PEP8 correct”，有两者其一说明安装成功。

Pyclewn
=====
    :help Pyclewn
    :Pyclewn pdb [script.py] ==><F5>
    :Cmapkeys                ==><F6>
    :map <C-P> :exe "Cp " . expand("<cword>") <CR>
    :<C-p>                   ==><F7>

The error is
(Pdb) p
*** SyntaxError: unexpected EOF while parsing

The C-P mapping uses the Vim balloon evaluation feature and this
feature does not seem to work in console mode.

You can get the same result (except it is based on the cursor
position, and not on the mouse position) by mapping C-P this way:

    :map <C-P> :exe "Cp " . expand("<cword>") <CR>

conque
=====
Usage
Type :ConqueTerm <command> to run your command in vim, for example:

    :ConqueTerm bash
    :ConqueTermSplit mysql -h localhost -u joe -p sock_collection
    :ConqueTermTab Powershell.exe
    :ConqueTermVSplit C:\Python27\python.exe

ConqueTerm
=====
http://www.vim.org/scripts/script.php?script_id=2771

        在vim(gvim)中运行终端

       下载conque_1.1.vba，用vim打开后，执行:so %，会自动执行安装.

    五.使用方法

        一共四个命令：

        ConqueTerm        : 在当前的窗口打开

        ConqueTermSplit    :横向分割一个窗口之后打开

        ConqueTermVSplit :竖向分割一个窗口之后打开

        ConqueTermTab    :先建一个tab页之后打开

        在想要退出某个窗口操作时，按一下ESC，之后就会回到vim操作中。

        另外，在bash中，按下i，会自动到达终端最后的光标处，的确很贴心的设计。

        快捷键 <F12> ==> ConqueTerm bash

To use Pydiction Usage
=====
Type part of a Python keyword, module name, attribute or method in "insert mode" in Vim, then hit the TAB key and it will auto-complete.

For example, typing:

    raw<Tab>

    will bring up a menu of possibilities, such as:

        raw_input(
            raw_unicode_escape_decode(
                raw_unicode_escape_encode(


To use NERDTree
---------------
    Press <C-t>

To use snipmate
---------------
    <F2> after typing the snippet

To use supertab
---------------
    shift-<tab> to auto complete


To use Grep
---------------
    :Grep按照指定的规则在指定的文件中查找
    :Rgrep同上, 但是是递归的grep
    :GrepBuffer在所有打开的缓冲区中查找
    :Bgrep同上
    :GrepArgs在vim的argument filenames (:args)中查找
    :Fgrep运行fgrep
    :Rfgrep运行递归的fgrep
    :Egrep运行egrep
    :Regrep运行递归的egrep
    :Agrep运行agrep
    :Ragrep运行递归的agrep

    nnoremap <silent> <F3> :Grep<CR>

    将光标移到"FEAT_QUICKFIX"上, 然后按下F3键
    在最下面的命令行会显示:
    Search for pattern: FEAT_QUICKFIX 此时你还可以编辑该行, grep支持正则表达式, 你想全词匹配的话可以改成:
    Search for pattern: /<FEAT_QUICKFIX/> 然后按下回车:
    在最下面的命令行会显示:
    Search in files: * 是问你搜索范围, 默认是该目录下的所有文件, 此时你还可以编辑该行, 比如你只想搜索源码文件:
    Search in files: *.c *.h 然后在按下回车, 会在弹出的QuickFix窗口中列出所有符合条件的搜索结果, 你可以在其中查找你想要的结果

To use shell
----------------
    从 Vim 内部执行单个 shell 命令，用 ":!{command}"。
    Vim 将执行该程序。当它结束时，你会得到提示，让你击打 <Enter>。这提示允许你 在回去编辑你的文本之前看一看该命令的输出。
    字符 "!" 也用在其它有个程序被调用运行的场合。让我们看一看共有哪些:
    :!{program}             执行 {program}
    :r !{program}           执行 {program} 并读取其输出
    :w !{program}           执行 {program} 传送文本至其输入
    :[range]!{program}      经由 {program} 过滤文本
    % 代表当前文件名
    例子
    :!python %

Vim快捷键
----------------
一、移动光标
1、左移h、右移l、下移j、上移k
2、向下翻页ctrl + f，向上翻页ctrl + b
3、向下翻半页ctrl + d，向上翻半页ctrl + u
4、移动到行尾$，移动到行首0（数字），移动到行首第一个字符处^
5、移动光标到下一个句子 ），移动光标到上一个句子（
6、移动到段首{，移动到段尾}
7、移动到下一个词w，移动到上一个词b
8、移动到文档开始gg，移动到文档结束G
9、移动到匹配的{}.().[]处%
10、跳到第n行 ngg 或 nG 或 :n
11、移动光标到屏幕顶端H，移动到屏幕中间M，移动到底部L
12、读取当前字符，并移动到本屏幕内下一次出现的地方 *
13、读取当前字符，并移动到本屏幕内上一次出现的地方 #

二、查找替换
1、光标向后查找关键字 #或者g#
2、光标向前查找关键字 *或者g*
3、当前行查找字符 fx, Fx, tx, Tx
4、基本替换 :s/s1/s2 （将下一个s1替换为s2）
5、全部替换 :%s/s1/s2
6、只替换当前行 :s/s1/s2/g
7、替换某些行 :n1,n2 s/s1/s2/g
8、搜索模式为 /string，搜索下一处为n，搜索上一处为N
9、制定书签 mx, 但是看不到书签标记，而且只能用小写字母
10、移动到某标签处 `x，1旁边的键
11、移动到上次编辑文件的位置 `.

PS：.代表一个任意字符 *代表一个或多个字符的重复
         正则表达式的内容将会在后续文章中整理

三、编辑操作
         1、光标后插入a, 行尾插入A
         2、后插一行插入o，前插一行插入O
         3、删除字符插入s， 删除正行插入S
         4、光标前插入i，行首插入I
         5、删除一行dd，删除后进入插入模式cc或者S
         6、删除一个单词dw，删除一个单词进入插入模式cw
         7、删除一个字符x或者dl，删除一个字符进入插入模式s或者cl
         8、粘贴p，交换两个字符xp，交换两行ddp
         9、复制y，复制一行yy
         10、撤销u，重做ctrl + r，重复.
         11、智能提示 ctrl + n 或者 ctrl + p
         12、删除motion跨过的字符，删除并进入插入模式 c{motion}
         13、删除到下一个字符跨过的字符，删除并进入插入模式，不包括x字符 ctx
         14、删除当前字符到下一个字符处的所有字符，并进入插入模式，包括x字符，cfx
         15、删除motion跨过的字符，删除但不进入插入模式 d{motion}
         16、删除motion跨过的字符，删除但不进入插入模式，不包括x字符 dtx
         17、删除当前字符到下一个字符处的所有字符，包括x字符 dfx
         18、如果只是复制的情况时，将12-17条中的c或d改为y
         19、删除到行尾可以使用D或C
         20、拷贝当前行 yy或者Y
         21、删除当前字符 x
         22、粘贴 p
         23、可以使用多重剪切板，查看状态使用:reg，使用剪切板使用”，例如复制到w寄存器，”wyy，或者使用可视模式v”wy
         24、重复执行上一个作用使用.
         25、使用数字可以跨过n个区域，如y3x，会拷贝光标到第三个x之间的区域，3j向下移动3行
         26、在编写代码的时候可以使用]p粘贴，这样可以自动进行代码缩进
         27、 >> 缩进所有选择的代码
         28、 << 反缩进所有选择的代码
         29、gd 移动到光标所处的函数或变量的定义处
         30、K 在man里搜索光标所在的词
          
          31、合并两行 J
          32、若不想保存文件，而重新打开 :e!
           
           33、若想打开新文件 :e filename，然后使用ctrl + ^进行文件切换
四、窗口操作
           1、分隔一个窗口:split或者:vsplit
           2、创建一个窗口:new或者:vnew
           3、在新窗口打开文件:sf {filename}
           4、关闭当前窗口:close
           5、仅保留当前窗口:only
           6、到左边窗口 ctrl + w, h
           7、到右边窗口 ctrl + w, l
           8、到上边窗口 ctrl + w, k
           9、到下边窗口 ctrl + w, j
           10、到顶部窗口 ctrl + w, t
           11、到底部窗口 ctrl + w, b

五、宏操作
           1、开始记录宏操作q[a-z]，按q结束，保存操作到寄存器[a-z]中
           2、@[a-z]执行寄存器[a-z]中的操作
           3、@@执行最近一次记录的宏操作

六、可视操作
           1、进入块可视模式 ctrl + v
           2、进入字符可视模式 v
           3、进入行可视模式 V
           4、删除选定的块 d
           5、删除选定的块然后进入插入模式 c
           6、在选中的块同是插入相同的字符 IESC

七、跳到声明
           1、[[ 向前跳到顶格第一个{  
           2、[] 向前跳到顶格第一个}
           3、]] 向后跳到顶格的第一个{
           4、]] 向后跳到顶格的第一个}
           5、[{ 跳到本代码块的开头
           6、]} 跳到本代码块的结尾

八、挂起操作
           1、挂起Vim ctrl + z 或者 :suspend
           2、查看任务 在shell中输入 jobs
           3、恢复任务 fg [job number]（将后台程序放到前台）或者 bg [job number]（将前台程序放到后台）
           4、执行shell命令 :!command
           5、开启shell命令 :shell，退出该shell exit
           6、保存vim状态 :mksession name.vim
           7、恢复vim状态 :source name.vim
           8、启动vim时恢复状态 vim -S name.vim

一.命令行多窗口参数 
 
    vim -o file1 file2 ...  #水平打开多窗口，
    vim -O file1 file2 ...  #垂直打开多窗口,
    vim -d file1 file2 ...  #垂直打开多窗口,并且进行比较
    vimdiff file1 file2 ..  #等同于上一句


二.VIM 多窗口命令

 在已经打开编辑界面时，如果要进行多窗口操作，可用如下命令操作
  
   split           #打开一个水平窗口.新窗口打开也是当前编辑文件
   split file1     #打开一个水平窗口.新窗口打开是file1
   vsplit           #打开一个垂直窗口.新窗口打开也是当前编辑文件
   vsplit file1     #打开一个垂直窗口.新窗口打开是file1

   diffsplit file2           #水平打开一个窗口编辑file2 ,并且与当前窗口进行比较
     vert   diffsplit file2  #垂直打开一个窗口编辑file2,并且与当前窗口进行比较

   如果已经用split打开文档，需要比较两个窗口，在每一个窗口分别执行 diffthis 
  

   关闭窗口
     q  或 close   #关闭当前窗口
     only          #保留当前窗口，关闭其它所有窗口
     qall          #退出所有窗口
     wall          #保存所有窗口
  

  
    

三.多窗口快捷键
    ZZ            #关闭当前窗口
    Ctrl ww       #将焦点移至下一个窗口



vim 从 vim7 开始加入了多标签切换的功能， 相当于多窗口.
之前的版本虽然也有多文件编辑功能， 但是总之不如这个方便啦。
用法
:tabnew [++opt选项] ［＋cmd］ 文件            建立对指定文件新的tab
:tabc       关闭当前的tab
:tabo       关闭所有其他的tab
:tabs       查看所有打开的tab
:tabp      前一个
:tabn      后一个
标准模式下：
gt , gT 可以直接在tab之间切换。

还有很多他命令， 看官大人自己， :help table 吧。

Have fun!
