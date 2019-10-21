---
title: Hexo搭建个人博客（基础篇）
copyright: true
abbrlink: e1b9c6c5
date: 2019-10-12 09:21:07
tags:
    - Hexo
categories:
    - Hexo
top:
type:
keywords: "安装Hexo"
---
> **初识Hexo**

&emsp;&emsp;Hexo 是一个快速、简洁且高效的博客框架。Hexo 使用 [Markdown](http://daringfireball.net/projects/markdown/)（或其他渲染引擎）解析文章，在几秒内，即可利用靓丽的主题生成静态网页。

## *安装Hexo*

&emsp;&emsp;建立Hexo只需要几分钟，安装Hexo非常简单。但是，您首先需要安装其他一些东西。
- [Node.js](http://nodejs.org/) (Node.js 版本需不低于 8.6，建议使用 Node.js 10.0 及以上版本)
- [Git](http://git-scm.com/)

&emsp;&emsp;如果您的电脑中已经安装上述必备程序，那么恭喜您！接下来只需要使用 npm 即可完成 Hexo 的安装。
```CMD
$ npm install -g hexo-cli
```
&emsp;&emsp;如果没有，那就一起来看下面吧(`这里只说一下windows的安装，因为本人现在比较穷，买不起mac啊 テ_デ，其他相关教程大家就去搜搜很多的。`)

### &emsp;&emsp;*安装git*

![安装git](https://s2.ax1x.com/2019/10/21/KlpZvD.md.png)
<div class="image-caption">安装git.png</div>
<a href="https://git-scm.com/downloads" class="LinkCard">安装地址</a>

&emsp;&emsp;一切按照默认走就行了，没什么特殊的地方，安装完成之后检查git是否安装成功（执行一下cmd命令），显示版本号即为成功！
```CMD
git --version
```
### &emsp;&emsp;*安装Node.js*

![安装Node.js](https://s2.ax1x.com/2019/10/21/KlpmKe.md.png)
<div class="image-caption">安装Node.js.png</div>

<a href="https://nodejs.org/en/" class="LinkCard">安装地址</a>

&emsp;&emsp;我们这里简单点，直接下载并运行安装程序就完了，还是走默认就行，安装完成之后检查node是否安装成功（执行一下cmd命令），显示版本号即为成功！
```CMD
node -v
```
### &emsp;&emsp;*安装Hexo*

&emsp;&emsp;所有必备的应用程序安装完成后，即可使用 npm 安装 Hexo。
```CMD
$ npm install -g hexo-cli
```
## *利用Hexo初始化我们的站点跟目录(文件)*

```CMD
$ hexo init <文件夹>
$ cd <文件夹>
$ npm install
```
&emsp;&emsp;选择你想要的盘符来建立我们的博客站点文件,我这里选择D:\blog，这里的blog是你的文件夹名字（根据自己的喜好建一个文件夹）

![init hexo](https://s2.ax1x.com/2019/10/21/KlPjo9.png)

&emsp;&emsp;cd到你的站点目录下，然后 初始化站点$ npm install，执行成功后到你的blog文件夹下看看是否这样的（一致就成功啦~~）

![blog](https://s2.ax1x.com/2019/10/21/Klkwa4.png)

&emsp;&emsp;介绍几个个命令 ,以后经常要用到的
```CMD
hexo g: 编译,生成静态文件，也就是public文件夹的东西。
hexo s: 开启本地服务(以上两步的操作可以合并成hexo s -g)。
hexo clean: 顾名思义就是清除缓存的意思了啦，这招一般在你改动之后网站没有变化时候用。
```
&emsp;&emsp;接下来看看 你博客的初步成果吧。

&emsp;&emsp;进入blog文件根目录:

&emsp;&emsp;&emsp;&emsp;执行命令: hexo g 和 hexo s

&emsp;&emsp;然后在你的浏览器输入`http://localhost:4000`，查看你的博客。

![blog首页](https://s2.ax1x.com/2019/10/21/KlAJFH.png)

&emsp;到此为止，你的个人博客就已经搭建完成了。
