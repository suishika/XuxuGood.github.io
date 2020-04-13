---
title: Hexo博客+Next主题进阶写作技巧
notshow: false
copyright: true
abbrlink: c7631ec1
date: 2019-11-14 14:53:24
tags:
  - Hexo
  - 写作技巧
categories:
  - Hexo
  - 写作技巧
top:
keywords: [Hexo,写作技巧,Markdown]
password:
description: 以下博客写作都是基于Next主题，其它主题不一定集成了以下写作方式。
---
<div class="note warning">
以下博客写作都是基于Next主题，其它主题不一定集成了以下写作方式。
</div>

## note标签的官方文档使用

首先我们需要在 `Next` 主题 `_config.xml` 中设置一下功能开关，有些默认是开的，有些默认是关的：
```BASH
note:
  # Note tag style values:
  #  - simple    bs-callout old alert style. Default.
  #  - modern    bs-callout new (v2-v3) alert style.
  #  - flat      flat callout style with background, like on Mozilla or StackOverflow.
  #  - disabled  disable all CSS styles import of note tag.
  style: simple
  icons: false
  border_radius: 3
  # Offset lighter of background in % for modern and flat styles (modern: -12 | 12; flat: -18 | 6).
  # Offset also applied to label tag variables. This option can work with disabled note tag.
  light_bg_offset: 0
```
note写作方式正如我最上面的样式，我们可以这样使用：

```BASH
{% note [class] [no-icon] %}
这里写你需要写的内容
{% endnote %}

// 注意上面的class和no-icon属性是可以选择的
[class]   : default | primary | success | info | warning | danger.
[no-icon] : Disable icon in note.
```

### 爬坑
{% note danger %}
标签开头和结尾在一行的写法是错误的
{% endnote %}

比如，如果你这样写是错误的：
```BASH
{% note danger %}note text, note text, note text{% endnote %}
```
或者如果这样写也是错误的：
```BASH
{% note danger %}note text
note text
note text
{% endnote %}
```
内容必须要跟note标签不在一行：
```BASH
{% note danger %}
note text, note text, note text
note text, note text, note text
note text, note text, note text
{% endnote %}
```

### 示例

1、没有定义样式类别
```BASH
{% note %}
(没有定义样式类别)
{% endnote %}
```
{% note %}
(没有定义样式类别)
{% endnote %}

2、默认的类别
```BASH
{% note default %}
默认形式的类别
{% endnote %}
```
{% note default %}
默认形式的类别
{% endnote %}

3、primary形式的类别
```BASH
{% note primary %}
首要类型形式
{% endnote %}
```
{% note primary %}
首要类型形式
{% endnote %}

4、info形式的类别
```BASH
{% note info %}
info形式的类别
{% endnote %}
```
{% note info %}
info形式的类别
{% endnote %}

5、success形式的类别
```BASH
{% note success %}
success形式的类别
{% endnote %}
```
{% note success %}
success形式的类别
{% endnote %}

6、warning形式的类别
```BASH
{% note warning %}
warning形式的类别
{% endnote %}
```
{% note warning %}
warning形式的类别
{% endnote %}

7、danger形式的类别
```BASH
{% note danger %}
danger形式的类别
{% endnote %}
```
{% note danger %}
danger形式的类别
{% endnote %}

8、无图标形式的note标签
```BASH
{% note info no-icon %}
没有图标的note标签
{% endnote %}
```
{% note info no-icon %}
没有图标的note标签
{% endnote %}

9、note标签中插入有序无序列表
```BASH
{% note default no-icon %}
在note中放入无序、有序列表
* ul
* ul
* ul

1. ol
2. ol
3. ol
{% endnote %}
```
{% note default no-icon %}
在note中放入无序、有序列表
* ul
* ul
* ul

1. ol
2. ol
3. ol
{% endnote %}

11、note标签中插入表格
```BASH
{% note default no-icon %}
| 1 | 2 |
| - | - |
| 3 | 4 |
| 5 | 6 |
| 7 | 8 |
{% endnote %}
```
{% note default no-icon %}
| 1 | 2 |
| - | - |
| 3 | 4 |
| 5 | 6 |
| 7 | 8 |
{% endnote %}

## note标签的html使用

在主题配置文件 `_config.yml` 里有一个关于这个的配置，但官方文档没有提供 HTML 的使用方式，个人认为这种方式更简单，也不会产生一些奇怪的显示 bugs……

<div class="note default">default</div>

```BASH
<div class="note default">default</div>
```

<div class="note primary">primary</div>

```BASH
<div class="note primary">primary</div>
```

<div class="note success">success</div>

```BASH
<div class="note success">success</div>
```

<div class="note info">info</div>

```BASH
<div class="note info">info</div>
```

<div class="note warning">warning</div>

```BASH
<div class="note warning">warning</div>
```

<div class="note danger">danger</div>

```BASH
<div class="note danger">danger</div>
```

<div class="note danger no-icon">danger no-icon</div>

```BASH
<div class="note danger no-icon">danger no-icon</p></div>
```

## 主题自带FontAwesome图标

效果：

1. <i class="fa fa-pencil"></i>支持 Markdown

Hexo 支持 GitHub Flavored Markdown 的所有功能，甚至可以整合 Octopress 的大多数插件。

2. <i class="fa fa-cloud-upload"></i>一件部署

只需一条指令即可部署到 GitHub Pages，或其他网站。

3. <i class="fa fa-cog"></i>丰富的插件

Hexo 拥有强大的插件系统，安装插件可以让 Hexo 支持 Jade，CoffeeScript。

源码：
```BASH
1. <i class="fa fa-pencil"></i> 支持 Markdown
   <i>Hexo 支持 GitHub Flavored Markdown 的所有功能，甚至可以整合 Octopress 的大多数插件。</i>
2. <i class="fa fa-cloud-upload"></i> 一件部署
   <i>只需一条指令即可部署到 GitHub Pages，或其他网站。</i>
3. <i class="fa fa-cog"></i> 丰富的插件
   <i>Hexo 拥有强大的插件系统，安装插件可以让 Hexo 支持 Jade，CoffeeScript。</i>
   采用的是 Font Awesome 的图标，下面给出一些简单的使用例子，更多请查看官网的使用示例。
```

采用的是 [Font Awesome](https://fontawesome.com/v4.7.0/) 的图标，下面给出一些简单的使用例子，更多请查看官网的[使用示例](https://fontawesome.com/v4.7.0/examples/)。
```BASH
- <i class="fa fa-pencil"></i> 铅笔
- <i class="fa fa-cloud-upload"></i> 上传
- <i class="fa fa-download"></i> 下载
```
- <i class="fa fa-pencil"></i> 铅笔
- <i class="fa fa-cloud-upload"></i> 上传
- <i class="fa fa-download"></i> 下载

```BASH
- <i class="fa fa-download"></i> 下载
- <i class="fa fa-download fa-lg"></i> 下载变大 33%
- <i class="fa fa-download fa-2x"></i> 下载两倍大
```
- <i class="fa fa-download"></i> 下载
- <i class="fa fa-download fa-lg"></i> 下载变大 33%
- <i class="fa fa-download fa-2x"></i> 下载两倍大

## 代码块内部样式高亮

Next主题其实是自带代码块高亮显示的，但是有另外一种好玩的代码块高亮写法，叫 `diff` 语言
```BASH
highlight:
  enable: true
  line_number: true
# 代码自动高亮
-  auto_detect: false
+  auto_detect: true
```
只需要在 markdown 语法代码块的语言选择处写上 `diff` 即可，然后在相应代码前面加上 `-` 和 `+` 就行了。不过默认的 `-` 是绿色，`+` 是红色，与 GitHub 上相反，也可以自己修改成 Github 上样式。

文件位置：themes/next/source/css/_custom/custom.styl
```BASH
// 文章```代码块diff样式
pre .addition {
    background: #e6ffed;
}
pre .deletion {
    background: #ffeef0;
}
```
当然，要是你不满意顶部的文字样式，也可以自己在 `custom.styl` 自定义：
```BASH
// 文章```代码块顶部样式
.highlight figcaption {
    margin: 0em;
    padding: 0.5em;
    background: #eee;
    border-bottom: 1px solid #e9e9e9;
}
.highlight figcaption a {
    color: rgb(80, 115, 184);
}
```

## 文本居中引用

效果：

{% cq %}
人生乃是一面镜子，
从镜子里认识自己，
我要称之为头等大事，
也只是我们追求的目的！
{% endcq %}

源码：
```BASH
{% cq %}
人生乃是一面镜子，
从镜子里认识自己，
我要称之为头等大事，
也只是我们追求的目的！
{% endcq %}
```

## 主题自带label标签

首先需要在Next主题 `_config.xml` 中配置：
```BASH
# Label tag.
label: true
```
然后效果如下（@ 前面的是 `label` 的名字，后面的是要显示的文字）：

* {% label default@default %}

```BASH
{% label default@default %}
```

* {% label primary@primary %}

```BASH
{% label primary@primary %}
```

* {% label success@success %}

```BASH
{% label success@success %}
```

* {% label info@info %}

```BASH
{% label info@info %}
```

* {% label warning@warning %}

```BASH
{% label warning@warning %}
```

* {% label danger@danger %}

```BASH
{% label danger@danger %}
```

{% note warning %}
注意这个有一个BUG，千万不要把这个放到段首。。。
{% endnote %}

## 主题自带tabs标签

{% tabs 选项卡, 1 %}
<!-- tab -->
**这是选项卡 1** 哈哈哈 φ(≧ω≦*)♪～
<!-- endtab -->
<!-- tab -->
**这是选项卡 2** 嘿嘿嘿 φ(≧ω≦*)♪～
<!-- endtab -->
<!-- tab -->
**这是选项卡 3** 嘻嘻嘻 φ(≧ω≦*)♪～
<!-- endtab -->
{% endtabs %}

```BASH
{% tabs 选项卡, 1 %}
<!-- tab -->
**这是选项卡 1** 哈哈哈 φ(≧ω≦*)♪～
<!-- endtab -->
<!-- tab -->
**这是选项卡 2** 嘿嘿嘿 φ(≧ω≦*)♪～
<!-- endtab -->
<!-- tab -->
**这是选项卡 3** 嘻嘻嘻 φ(≧ω≦*)♪～
<!-- endtab -->
{% endtabs %}
```
首先还是需要在Next主题配置文件中配置：

文件位置：~/hexo/themes/next/_config.yml
```BASH
# Tabs tag.
tabs:
  enable: true
  transition:
    tabs: false
    labels: true
  border_radius: 0
```
然后上面源码中 `, 1` 表示一开始在第一个选项卡，非必须，若数值为 `-1` 则隐藏选项卡内容。更多用法请查看[这个页面](https://almostover.ru/2016-01/hexo-theme-next-test/#Tab-tag-test)。

## 主题自带样式按钮

效果：

{% btn https://www.baidu.com, 点击下载百度, download fa-lg fa-fw %}

源码：
```BASH
{% btn https://www.baidu.com, 点击下载百度, download fa-lg fa-fw %}
```
关于按钮的更多使用可以前往[这个页面](https://almostover.ru/2016-01/hexo-theme-next-test/#Button-tag-test)查看。
