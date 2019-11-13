---
title: Hexo博客+Next主题深度优化与定制
notshow: false
copyright: true
abbrlink: ab21860c
date: 2019-10-17 16:17:56
tags:
  - Hexo
categories:
  - Hexo
top:
keywords:
  - Hexo
  - 优化
password:
description: 本教程只适用于 Next5 或者 Next6 主题，Next7 开始做了大量修改，并删除了 custom.styl 文件，同时增加了很多在 Next7 之前需要手动配置的功能，请随个人喜好进行版本选择。
---

# *写在前面*
<div class="note warning">
本教程只适用于 Next5 或者 Next6 主题，Next7 开始做了大量修改，并删除了 custom.styl 文件，同时增加了很多在 Next7 之前需要手动配置的功能，请随个人喜好进行版本选择。
</div>

***
<div class="note info">我的个人博客就是使用 Hexo 博客框架 + Next 主题搭建而来的，之前也使用过CSDN、博客园等，最后都放弃了，一方面是因为广告多，另外一方面样式我也不是很喜欢，而如果自己从零开始写博客源代码的话，比较复杂而且麻烦。后来偶然看到了 hexo 博客框架，并经过推荐使用了 Next 主题，这才正式入了 hexo 博客的坑！不得不说 Next 主题能够魔改并且自身集成了很多优秀的第三方插件是这款主题具有如此强大活力的根本原因😘。
</div>

本文下面主要先介绍 Hexo 博客和 Next 主题的搭建，如果你已经搭建好了博客框架，但是想进一步地修改博客样式，可以直接跳转到最下面[优化定制部分](#Next主题进阶优化配置)😄，本文参考的博客链接也会直接在文中插入或者在文末标明，如果有遗漏，欢迎指出。

在本文更新于 2019/7/27 时，Next 主题最新版本已经更新到 v7.2.0，以下很多内容都已经在新主题中做出了适配或者直接无法使用，愿意更新到最新版本的小伙伴请关注[官方文档更新](https://theme-next.org/)。不愿意更新的小伙伴或者目前使用的是旧版本（比如我还是 Next5 版本）可以继续进行一定的参考。（ps：开发团队实在厉害，根本跟不上开发速度😐 ）。

# *环境准备*
在安装 hexo 框架之前，我们需要先安装该框架的依赖环境：

1. Node.js
2. Git

因为 Hexo 博客框架就是基于 Node.js 渲染的，所以必须要先安装 Node.js 环境，我们可以去[Node.js中文官网](http://nodejs.cn/download/)下载，如图
<a href="http://nodejs.cn/download/" class="LinkCard">安装地址</a>

![node.js](https://s2.ax1x.com/2019/11/13/MG5ZcV.png)

一般我们是在 windows 或者 macOS 环境下作为本机操作的，所以下载对应的安装包就可以了，下载好后一路点 next 下一步就完成了，这个没什么问题。

然后我们需要安装一下 Git，Git 主要是帮助我们部署到 Github Pages 静态仓库上以域名形式访问。

安装 Git 的话，如果是 windows 系统，可以直接去[Windows的Git下载地址](https://gitforwindows.org/)去下载，如果是 macOS 的话，也可以在[这里下载](https://www.git-scm.com/download/)。当这些环境都部署好之后，就可以开始我们的 hexo 博客安装啦！

<a href="https://gitforwindows.org/" class="LinkCard">Windows的Git下载地址</a>

<a href="https://www.git-scm.com/download/" class="LinkCard">MacOS的Git下载地址</a>

# *安装 Hexo 和 Next*

## *安装 hexo*
本文安装环境为 windows10，所以以下都以 windows 操作系统下安装为例。
<div class="note danger">安装之前需要说明几个注意事项：<br>- 很多命令既可以使用 windows 的 cmd 命令行来完成，也可以使用刚才安装好的 Git 命令行工具 Git Bash 来完成，但是在 cmd 中部分命令会出现一些问题，建议只使用 Git Bash 来执行命令。<br>- Hexo 不同版本之间有差别，要注意自己安装的版本是哪个版本（跟着本文走就没问题啦），如果修改样式的话注意网上教程的 Hexo 版本差异。<br>- Hexo 安装好后有 2 种<code>_config.xml</code>文件，一个是 hexo 站点根目录下的全局<code>_config.xml</code>文件，还有一种是每个主题 theme 下的各自的<code>_config.xml</code>文件，注意区分二者，后面会详细说到。<br></div>

### *安装 hexo*
依然是在 GitBash 中操作，输入以下命令，等待安装完成。
```BASH
$ npm install -g hexo-cli
```

### *创建 hexo 文件夹*
在电脑某个位置创建一个名为 hexo 的文件夹（当然名字可以随便取），比如我个人的就是 `E:\blog\hexo` ，由于这个文件夹是你以后存放博客代码和文章的地方，所以最好不要乱放，然后我们在 GitBash 中使用 cd 命令移动到创建好的文件夹中。
```BASH
$ cd /e/blog/hexo
```

### *初始化 hexo*
在上面 cd 到创建的文件夹后，输入以下命令进行初始化
```BASH
$ hexo init
```

这个命令执行的时间非常长，主要是初始化 hexo 博客中的文件夹，包括 hexo 博客内置的各种 node_modules 组件等等，所以耐心的稍等一下！如果初始化失败建议删除文件夹内容后重试。

初始化完成后，我们打开刚才创建的文件夹，会发现里面包含如下文件夹：

![](https://s2.ax1x.com/2019/10/21/Klkwa4.png)

注意，其中有一个_config.xml文件，这个我们叫做<font color="red">站点根目录配置文件</font>，里面的初始内容如下：（附上中文介绍）
```BASH
# Hexo Configuration
## Docs: https://hexo.io/docs/configuration.html
## Source: https://github.com/hexojs/hexo/

# Site 站点主配置
title: Hexo  # 网站标题
subtitle:    # 网站副标题
description:   # 网站描述
keywords:      # 可以不填写保持默认
author: John Doe  # 网站拥有者昵称
language:    # 网站语言设置，一般根据依赖的主题而定
timezone:    # 网站时区设置，一般不填写保持默认

# URL地址链接设置
url: http://yoursite.com   # 网站url设置
root: /                    # 网站根目录链接
permalink: :year/:month/:day/:title/   # 文章链接，默认是按照 /年/月/日/文章标题 设置的链接
permalink_defaults:                    # 默认链接形式

# Directory  网站主要目录，这里一般不做改动
source_dir: source
public_dir: public
tag_dir: tags
archive_dir: archives
category_dir: categories
code_dir: downloads/code
i18n_dir: :lang
skip_render:

# Writing  网站文章设置，同样一般不做改动
new_post_name: :title.md  # File name of new posts
default_layout: post
titlecase: false # Transform title into titlecase
external_link: true # Open external links in new tab
filename_case: 0
render_drafts: false
post_asset_folder: false
relative_link: false
future: true
highlight:
  enable: true
  line_number: true
  auto_detect: false
  tab_replace:
  
# Home page setting  主页设置，一般不做改动
index_generator:
  path: ''
  per_page: 10
  order_by: -date  # 首页文章排序，默认是按照文章日期递减
  
# Category & Tag  分类设置，一般不做改动
default_category: uncategorized
category_map:
tag_map:

# Date / Time format  日期设置，一般不做改动
date_format: YYYY-MM-DD
time_format: HH:mm:ss

# Pagination  导航页设置，一般不做改动
per_page: 10   # 设置每页展示多少文章
pagination_dir: page

# Extensions  使用的主题名称，可以在这里切换
theme: next  # 此处切换主题名称

# Deployment  部署，一般选择部署到Github上
deploy:
  type:
```

其实到这里来说，我们的 hexo 博客已经做好了！不信？我们执行下面命令看看：
```BASH
//cd到根目录执行
$ hexo g
$ hexo s
```
然后我们打开浏览器，输入 `http://localhost:4000` ，是不是惊奇的发现已经完成了？

![首页](https://s2.ax1x.com/2019/10/21/KlAJFH.png)

等….等一下，页面怎么是英文的😫？？？！

别慌，上面提到配置文件的时候已经说到是语言没有修改了，我们可以打开 hexo 目录下的 themes 文件夹，发现里面有一个 landscape 文件夹，没错，你刚才看到的默认主题就是这个名叫 `landscape` 的主题，这个主题是 hexo 博客自带的默认主题，当然我们可以下载其它主题来代替它，具体方式在后面会介绍。

然后我们先来分析一下这个 landscape 主题文件夹：

![](https://s2.ax1x.com/2019/11/13/MGH9Fe.png)

注意这里面有一个 `_config.xml` 配置文件，其实上面已经强调过，这个跟前面的站点根目录下配置文件同名，但是这个配置文件是在主题目录下的，那么这个配置文件我们一般就叫做<font color="red">主题配置文件，基本每个 hexo 博客第三方主题下面都会有这个配置文件，所以主题配置文件是一种统称。</font>

里面的初始内容我们暂时不管（因为不同主题的配置文件内容不一样，反正我们又不使用这个主题~）。

先来看看上面的 languages 文件夹，一看就懂，都知道这就是网站语言配置文件，好，我们进去看一下，噢~里面的 zh-CN 和 zh-TW 可不就是中文吗。其中 zh-CN 指的是简体中文，zh-TW（湾湾）是繁体中文，欧克。然后我们再去站点根目录下，注意这里是 <font color="red">站点根目录下（hexo/_config.xml）</font>的配置文件中（千万别懵逼了），将这里：
```DIFF
# Site 站点主配置
title: sanarous教你搭建Hexo博客  //网站标题修改
subtitle: so easy~  //副标题修改
description:  //网站描述
keywords: hexo,next,Java,博客    //网站关键字,用英文逗号分开
author: Sanarous   //此处填写你自己的昵称  
+ language: zh-CN    //这里改成上面在主题配置文件中看到的语言名字，注意英文冒号:后面有一个空格
timezone:   //网站时区，保持默认就可以了
```
更改完后，我们回 GitBash 命令行，输入以下命令：
```BASH
$ hexo g && hexo s
```
再重新打开浏览器刷新，是不是页面语言变成中文的了！

好吧，现在先说一下上面的命令中的 `hexo s && hexo g` 是什么东西，`hexo s` 是启动 hexo 服务的，可以理解为是 `hexo serve` 或者 `hexo start` ，一般都是简写为 `hexo s` ，而 `hexo g` 是重新生成 public 文件夹的命令，全称是 `hexo generator` ，那么 public 文件夹是什么呢？

别慌，我们回头看一下 hexo 文件夹目录：

![文件夹](https://s2.ax1x.com/2019/11/13/MGb6vn.png)

看到这个 public 文件夹嘛，这个里面就是生成的所有静态文件，包括 html，css，js 文件以及图片等，稍微懂一些前端的人就知道这个文件夹就是你的博客被 node.js 渲染后生成的最终文件夹，这个文件夹中点开 index.html 就能看到你的博客页面了😄！简单点来说如果在本地修改了什么文件内容，可以使用 `hexo g` 命令重新生成一下public文件夹，那么这个文件夹只要修改了，再使用 `hexo s` 启动服务就可以看到页面变化了，当然 `hexo s` 本身就具有在线调试的功能，如果 `hexo s` 无法刷新页面修改内容，那么使用 `hexo g && hexo s` 就可以看到更改内容啦~

### *第一篇博客文章*
博客基本框架完成后，我们做的第一件事就是创建第一篇个人博客啦！可以在 Gitbash 中 cd 到 hexo 根目录，使用如下命令：
```BASH
hexo new "我的第一篇博客"

//或者可以简写为

hexo n "我的第一篇博客"
```
就可以在 `hexo/source/_posts` 文件下面新建一个 `.md` 文件，这个 `.md` 文件就是 Markdown 文件，所以我们写博客只要在本地编辑这个 Markdown 文件就可以了。Markdown 语法可以 Google 一下使用教程，比较简单并且实用。

## *将 Hexo 博客部署到 Github 上*
1. 为什么要部署到 Github上呢，当然是有以下原因：
2. 因为 Hexo 博客都是静态文件，GithubPages 自身就支持静态文件。
3. 免费方便，不用花一分钱就可以自己搭建一个自由的个人博客，并且没有服务器没有后台。
4. 可以随意绑定自己的域名，并且可以一键开启 HTTPS，很方便。
5. 数据绝对安全，github 可以恢复任意版本。
6. 博客内容可以轻松打包、转移以及发布到其它平台。
7. ……

在部署到 Github 之前，我们需要准备好自己的 Github 账号，Github 账号可以在 Github 官网注册。

<a href="https://github.com" class="LinkCard">Github官网</a>

### *创建 Github 仓库*
首先我们需要在 Github 上创建一个 repository，就是创建一个仓库的意思，在登录账号后首页就有一个显眼的 create new repository，点进去就可以看到了，注意名字必须为你的 `Github用户名.github.io` ，如下图：

![github](https://s2.ax1x.com/2019/10/21/Kl0wjI.png)

不能设置为其它名字，只能用这个仓库名。这样设置以后，我们在不绑定域名的前提下，可以直接使用 `http://Sanarous.github.io` 来访问自己的个人博客，这样就相当于有一个个人域名，并且是永久免费的！

### *配置 SSH Key*
如果是第一次在自己的本机上使用 Git 上传到 Github 上，那么必须配置 `SSH key` ，表示 Github 允许这台机器有权限使用 Git 上传代码到远端仓库。

我们可以在 GitBash 中使用 `$ cd ~/.ssh` 命令来查看本机已经存在的 ssh 密钥，如果是第一次使用会显示 `No such file or directory` ，如果不是的话，就需要用已经存在的密钥或者重新生成一份了。

然后输入
```BASH
$ ssh-keygen -t rsa -C "邮件地址"
```
上面的邮件地址就是你的 Github 注册邮箱地址，在提示后连续回车，最终会生成一个文件在 C 盘用户目录下面

![ssh](https://s2.ax1x.com/2019/11/13/MGOE9g.png)

打开这个 .ssh 文件，里面存放了密钥，然后我们打开自己的 Github 个人主页，进入 `个人设置 -> SSH and GPG keys -> New SSH key`

![ssh1](https://s2.ax1x.com/2019/11/13/MGOrCD.png)

上面的 Title 可以任意填写，下面的 key 注意要打开 .ssh 文件，将密钥复制进去

### *测试是否成功*

使用如下命令：
```BASH
$ ssh -T git@github.com # 注意邮箱地址不用改
```
如果提示 `Are you sure you want to continue connecting (yes/no)?` 点击yes，会显示

`Hi Sanarous! You've successfully authenticated, but GitHub does not provide shell access.`

看到这个信息就说明 SSH 已经配置成功！

### *配置 Git 提交的用户信息*
上面配置成功后，我们就可以设置 Git 的全局用户信息了，这个信息设置当前 Git 命令上传代码的用户信息。

使用以下命令：
```BASH
$ git config --global user.name "XuxuGood" // 你的github用户名，非昵称
$ git config --global user.email  "xxx@qq.com" // 填写你的github注册邮箱
```
配置完成后以后提交代码都是使用的这个用户信息进行提交的。

### *将 Hexo 博客部署到 Github 上*
首先打开 hexo 站点的配置文件，找到 deloy 并填写如下配置：

文件位置：`hexo/_config.xml`
```BASH
deploy:
  type: git
  repository: git@github.com:XuxuGood/XuxuGood.github.io.git # 用户名改成你自己的
  branch: master
```
或者也可以写成这样：
```BASH
deploy:
  type: github
  repository: https://github.com/XuxuGood/XuxuGood.github.io.git
  branch: master
```
无论是哪种写法，此时直接执行 `hexo d` 的话一般会报如下错误：`Deployer not found: github` 或者 `Deployer not found: git`

原因是还需要安装一个插件 `hexo-deployer-git` ，我们可以在 Git 中 cd 到 hexo 根目录，并输入以下命令：
```BASH
cd /e/hexo/
npm install hexo-deployer-git --save
```
然后我们可以使用 `hexo clean && hexo g && hexo deploy` 命令来完成一键部署到 Github 上。

## *安装 Next 主题*
由于默认的主题 landscape 界面比较丑（当然魔改也是可以的），我们可以使用 Hexo 官方推荐的主题：[https://hexo.io/themes](https://hexo.io/themes) ，如果喜欢这里面的某些主题，可以直接去上面主题对应的界面中的 Github 中下载（下载方式与稍后介绍的下载 Next 主题一样）。

目前在 Github 上 star 数量比较多的有 Next 主题、yillia 主题等，Next 主题基本占据了 Hexo 博客的半壁江山，并且 Next 主题集成功能较多，因此我下面只介绍 Next 主题的使用方式。

首先我们可以打开 Github，全局搜索 `hexo-next` ，我们会发现是有两个 star 数量比较高的：

![hexo-next](https://s2.ax1x.com/2019/11/13/MGjatK.png)

<div class="note info">其中第一个是 Next5 版本的，而第二个是 Next6 版本的。2019/7/27 更新：第二个 Github 仓库目前一直是 Next 主题更新最新版本的的仓库，目前已经更新到 v7.2.0，以下内容仅供参考。</div>

注意上面说的版本关系，在 Next6 版本上其实增加了很多 Next5 需要手动配置的东西，并且 Next5 已经停止维护了，如果不太喜欢自己手动去配置的话，建议使用 Next6 版本。当然本博客使用的仍然是 Next5 版本，如果需要我的个性化设置的话也可以留言。

下面我们来安装 Next 主题。

### *下载 Next 主题*
以下均以 Next6 版本为例，Next5 版本操作基本一样。

进入[https://github.com/theme-next/hexo-theme-next](https://github.com/theme-next/hexo-theme-next)

我们安装 Next6 版本的话，有两种方式：
1. 在 GitBash 中 cd 到博客根目录下，然后使用 git clone 命令将 Next 仓库克隆到 hexo 目录下的 `themes/next` ，即命令是 `git clone https://github.com/theme-next/hexo-theme-next.git themes/next`
2. 直接在 Github 页面上选择绿色的按钮 `Clone or Download` ，点击下载 zip 压缩包。

如果第一种方式比较慢的话，可以直接选择第二种方式直接下载，然后将下载好的压缩包解压后放在 `E:\blog\hexo\themes\` 下面，`git clone` 的话也是在这个下面，下载好后的名字可以任取。

### *设置 hexo 博客为 Next 主题*
在站点根目录下_config.xml配置文件中，找到如下代码并进行配置：

文件位置：hexo/_config.xml
```DIFF
# Extensions
## Plugins: https://hexo.io/plugins/
## Themes: https://hexo.io/themes/
- theme: landscape      # 更改原始默认的主题名称，修改为如下
+ theme: hexo-theme-next   # 此处填入你在themes目录下的next主题文件名
```

### *测试 Next 主题*
在 `GitBash` 中输入
```BASH
$ hexo clean && hexo g && hexo s
```
等待启动完成在浏览器中输入http://localhost:4000即可查看安装好的 Next 主题！

# *Next 主题基本功能配置*
Next 主题安装好后的初始界面也是很简洁的，我们可以先设置一些常用功能😊。

首先为了防止懵逼，再次友情提醒：在这里修改的一律是主题配置文件 `_config.xml` ，目录是 `hexo/themes/next/_config.xml` ，千万不要走错地方了！

我们打开 `_config.xml` 主题配置文件对应一一修改。

<div class="note danger">由于配置文件是 yml，如果对 yml 语法不太熟的小伙伴，注意每个配置之间都必须有空格，不然报错。如 <code>override: false</code> ，注意英文冒号 <code>:</code> 后面有一个空格，所有 yml 语法都是这样。</div>

以下默认使用的文本编辑器为 notepad++、WebStorm 或者 sublime，主题使用的是 Next6 版本（注意 Next 官方会不断进行更新，所以下面的不一定都有效，因为官方正在不断集成更多功能，具体地可以自行在配置文件中探索~）

以下均在 `hexo s` 在线调试环境中进行修改~

## *网站favicon图标设置*

![favicon](https://s2.ax1x.com/2019/11/13/MJSy28.png)

favicon 图标相当于是网站的 logo 简化版，所以我们也可以给自己的网站添加一个 favicon 图标，使用notepad++、WebStorm 或者 sublime 打开配置文件后，使用 `Ctrl+F` 搜索 `favicon`

文件位置：hexo/themes/next/_config.xml
```BASH
favicon:
  small: /images/favicon-16x16-next.png  # 网站小图标
  medium: /images/favicon-32x32-next.png   # 中等图标
  apple_touch_icon: /images/apple-touch-icon-next.png  # app_touch上显示图标   
  safari_pinned_tab: /images/logo.svg   # 在Safari浏览器中显示图标
  #android_manifest: /images/manifest.json  # 安卓默认显示同普通情况下
  #ms_browserconfig: /images/browserconfig.xml
```
网站 favicon 图标可以放到你的 next 主题目录下面的 `source/images` 中，然后按照上述相对路径方式引用，这里 favicon 图标不需要非得是 ico 格式的，也可以是 png 或其它图片格式。

如果是有第三方图床放图片链接的，也可以直接改成图片链接。

## *网站页脚小心心定义*

![heart](https://s2.ax1x.com/2019/11/13/MJ9RNn.png)

在 Next5 版本中需要手动修改设置，但是在 Next6 中已经集成好这个功能了，搜索 footer，设置如下，就可以在页脚看到跳动的小心心啦

文件位置：hexo/themes/next/_config.xml
```BASH
footer:
  # 指定网站开始运行的年份，如果不指定，则默认为当前年份
  since: 2019

  # 在页脚年份和版权信息中间显示的图标
  icon:
    # 图标形状显示，可以参考 https://fontawesome.com/v4.7.0/icons 中的名字
    # 官方建议使用 heart 图标，颜色设置为 #ff0000，这也显示的是跳动的心
    name: heart
    # 如果想要图标跳动，下面设置为 true
    animated: true
    # 改变图标颜色
    color: "#ff0000"
```

## *关闭底部由 hexo 强力驱动的广告*

![HEXO-驱动](https://s2.ax1x.com/2019/11/13/MJiCtA.png)

由于默认的页面中 hexo 会在网页底部居中位置打个广告（要恰饭的嘛），但是官方还是很良心的在配置文件中设置了广告开关，还是在上面 footer 中，如下配置全部设置为 false 就可以关闭广告了。
```DIFF
  powered:
    # Hexo link (Powered by Hexo).
-    enable: false
    # Version info of Hexo after Hexo link (vX.X.X).
-    version: false

  theme:
    # Theme & scheme info link (Theme - NexT.scheme).
-    enable: false
    # Version info of NexT after scheme info (vX.X.X).
-    version: false
```
