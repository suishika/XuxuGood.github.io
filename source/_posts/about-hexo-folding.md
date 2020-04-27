---
title: Hexo+Next7.8.0 引入 Folding 容器
top: false
essential: false
notshow: false
copyright: true
abbrlink: d0bc4f5d
date: 2020-04-27 13:46:25
tags: [Hexo,Folding]
categories: [Hexo,Folding容器]
keywords: [折叠式容器,Folding,Next7.8.0]
password:
description: 分享一下如何将折叠式容器封装到 Next 主题中。
---

偶然间看到了html5的  `<summary>` 标签，可以将内容展开折叠，感觉很棒，就将其封装到 Next 主题中使用。

本文介绍的文件路径及方法都是基于 `Next7.8.0` 版本实现的，小伙伴采用且考虑兼容性。

## :sun_with_face: 使用方法

{% tabs %}
<!-- tab 语法格式-->
```
{% folding 参数（可选）, 标题 %}

![](https://cdn.jsdelivr.net/gh/xaoxuu/cdn-wallpaper/abstract/41F215B9-261F-48B4-80B5-4E86E165259E.jpeg)

{% endfolding %}
```
<!-- endtab -->

<!-- tab 参数列表-->
参数位置可以填写颜色和状态，多个参数用空格隔开。

<span style="font-weight: bold;color: #2196f3;">颜色</span>
```
blue, cyan, green, yellow, red
```
<span style="font-weight: bold;color: #2196f3;">状态</span>

状态填写 open 代表默认打开。
<!-- endtab -->

<!-- tab 示例写法-->
```
{% folding 查看图片测试 %}

![](https://s1.ax1x.com/2020/04/27/Jf1GHH.jpg)

{% endfolding %}

{% folding cyan open, 查看默认打开的折叠框 %}

这是一个默认打开的折叠框。

{% endfolding %}

{% folding green, 查看代码测试 %}

{% endfolding %}

{% folding yellow, 查看列表测试 %}

- haha
- hehe

{% endfolding %}

{% folding red, 查看嵌套测试 %}

{% folding blue, 查看嵌套测试2 %}

{% folding 查看嵌套测试3 %}

hahaha <span><img src='https://cdn.jsdelivr.net/gh/xaoxuu/cdn-assets/emoji/tieba/%E6%BB%91%E7%A8%BD.png' style='height:24px'></span>

{% endfolding %}

{% endfolding %}

{% endfolding %}
```
<!-- endtab -->

<!-- tab 参数列表-->

{% folding 查看图片测试 %}

![](https://s1.ax1x.com/2020/04/27/Jf1GHH.jpg)

{% endfolding %}

{% folding cyan open, 查看默认打开的折叠框 %}

这是一个默认打开的折叠框。

{% endfolding %}

{% folding green, 查看代码测试 %}

```
查看代码测试
```

{% endfolding %}

{% folding yellow, 查看列表测试 %}

- haha
- hehe

{% endfolding %}

{% folding red, 查看嵌套测试 %}

{% folding blue, 查看嵌套测试2 %}

{% folding 查看嵌套测试3 %}

吼吼 :v:

{% endfolding %}

{% endfolding %}

{% endfolding %}
<!-- endtab -->
{% endtabs %}

## :sun_with_face: 配置
### :tada: 引入js

在  `\next\scripts\tags` 目录下新建文件 `folding.js`，并添加以下内容：
```
'use strict';

function postFolding(args, content) {
  args = args.join(' ').split(',');
  let style = ''
  let title = ''
  if (args.length > 1) {
    style = args[0].trim()
    title = args[1].trim()
  } else if (args.length > 0) {
    title = args[0].trim()
  }
  if (style != undefined) {
    return `<details ${style}><summary> ${hexo.render.renderSync({text: title, engine: 'markdown'}).split('\n').join('')} </summary>
              <div class='content'>
              ${hexo.render.renderSync({text: content, engine: 'markdown'}).split('\n').join('')}
              </div>
            </details>`;
  } else {
    return `<details><summary> ${hexo.render.renderSync({text: title, engine: 'markdown'}).split('\n').join('')} </summary>
              <div class='content'>
              ${hexo.render.renderSync({text: content, engine: 'markdown'}).split('\n').join('')}
              </div>
            </details>`;
  }

}

hexo.extend.tag.register('folding', postFolding, {ends: true});
```

### :tada: 引入css

在 `\next\source\css\_common\scaffolding\tags` 目录下新建文件 `folding.styl`,并添加以下内容：
```
// gap
$gap = 16px // base gap
$gap-h2 = 48px
$gap-h3 = 32px
$gap-h4 = 16px
$gap-paragraph = 1rem // 区块间距
$gap-row = .5rem // 行间距
$gap-card = $gap
// border radius
$border-codeblock = 4px
// common
$color-card = white
$color-text = #555
$color-block =  #f6f6f6
// font size
$fontsize-meta = .875rem   // 14px
$fontsize-list = .9375rem // 15px
//color
$color-p = #555
$color-md-blue = #e8f4fd
$color-md-blue1 = rgba(33,150,243,0.3)

$color-mac-cyan = #e8fafe
$color-mac-cyan1 = rgba(27,205,252,0.3)
$color-mac-green = #ebf9ed
$color-mac-green1 =rgba(61,197,80,.3)
$color-mac-yellow = #fff8e9
$color-mac-yellow1 = rgba(255,189,43,0.3)
$color-mac-red = #feefee
$color-mac-red1 = rgba(254,95,88,0.3)
// transition time
$time = 0.28s

details
  display: block
  padding: $gap
  margin: $gap-row 0
  border-radius: $border-codeblock
  background: $color-card
  font-size: $fontsize-list
  transition: all $time ease
  -moz-transition: all $time ease
  -webkit-transition: all $time ease
  -o-transition: all $time ease

  summary
    cursor: url(/images/ayuda.cur),auto;
    padding: $gap
    outline:none;
    margin: 0 - $gap
    border-radius: $border-codeblock
    color: alpha($color-p, .7)
    font-size: $fontsize-meta
    font-weight: bold
    position: relative
    line-height: normal


    >p, h1, h2, h3, h4, h5, h6
      display: inline !important
      border-bottom: none !important
      cursor: url(/images/ayuda.cur),auto;

    &:hover
      color: $color-p

      &:after
        position: absolute
        content: '+'
        text-align: center
        top: 50%
        transform: translateY(-50%)
        right: $gap

  border: 1px solid $color-block

  > summary
    background: $color-block

  &[blue]
    border-color: $color-md-blue

    > summary
      background:$color-md-blue

  &[cyan]
    border-color:$color-mac-cyan

    > summary
      background:$color-mac-cyan

  &[green]
    border-color:$color-mac-green

    > summary
      background:$color-mac-green

  &[yellow]
    border-color:$color-mac-yellow

    > summary
      background:$color-mac-yellow

  &[red]
    border-color:$color-mac-red

    > summary
      background:$color-mac-red

details[open]
  border-color: alpha($color-p, .2)

  > summary
    border-bottom: 1px solid alpha($color-p, .2)
    border-bottom-left-radius: 0
    border-bottom-right-radius: 0

  &[blue]
    border-color: alpha($color-md-blue1, .3)

    > summary
      border-bottom-color: alpha($color-md-blue1, .3)

  &[cyan]
    border-color: alpha($color-mac-cyan1, .3)

    > summary
      border-bottom-color: alpha($color-mac-cyan1, .3)

  &[green]
    border-color: alpha($color-mac-green1, .3)

    > summary
      border-bottom-color: alpha($color-mac-green1, .3)

  &[yellow]
    border-color: alpha($color-mac-yellow1, .3)

    > summary
      border-bottom-color: alpha($color-mac-yellow1, .3)

  &[red]
    border-color: alpha($color-mac-red1, .3)

    > summary
      border-bottom-color: alpha($color-mac-red1, .3)

  > summary
    color: $color-p
    margin-bottom: 0

    &:hover
      &:after
        content: '-'

  > div.content
    padding: $gap
    margin: 0 - $gap
    margin-top: 0

    p > a:hover
      text-decoration: underline

    >
    p, .tabs, ul, ol, .highlight, .note, .fancybox, details
      &:first-child
        margin-top: 0

      &:last-child
        margin-bottom: 0
```

最后在目录 `\next\source\css\_common\scaffolding\tags` 下有一个文件 `tags.styl`，添加以下内容：
```
@import 'folding';
```

配上完以上内容，素质三连 `hexo clean && hexo g && hexo s` 就可以在 Markdown 中使用啦！
