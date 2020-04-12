---
title: Hexo优化之lazyload图片懒加载
top: false
essential: false
notshow: false
copyright: true
abbrlink: '61913369'
date: 2019-11-19 14:54:16
tags:
  - Hexo
  - lazyload
  - 图片
categories:
  - Hexo
  - lazyload
  - 图片
keywords: [Hexo,lazyload,图片懒加载]
password:
description: Hexo 博客虽然功能很强大，但也越来越繁重了，访问速度上有了一些问题，这里我也考虑了许多，例如加 cdn，将国外的资源引用改为国内镜像等方式。今天又想到如果一个页面的图片很多，那么如何来提高博客的访问速度呢？
---

## 前言

Hexo 博客虽然功能很强大，但也越来越繁重了，访问速度上有了一些问题，这里我也考虑了许多，例如加 cdn，将国外的资源引用改为国内镜像等方式。今天又想到如果一个页面的图片很多，那么如何来提高博客的访问速度呢？

经过一番寻找之后，找到一个方案，就是懒加载，通俗点讲就是当你翻到图片的时候再加载那张图片，而不是以下将本页面的所有图片都加载完。

## 配置

在你的 Hexo 目录下，执行以下命令：
```BASH
npm install hexo-lazyload-image --save
```

然后在你的 Hexo 目录的配置文件 `_config.yml` 中添加配置:
```BASH
lazyload:
  enable: true
  onlypost: false
  loadingImg: /images/loading.gif
```

## 注意

1. onlypost：是否仅文章中的图片做懒加载，如果为 false，则主题中的其他图片，也会做懒加载，如头像，logo 等任何图片。
2. loadingImg：图片未加载时的代替图，不填写使用默认加载图片，如果需要自定义，添填入 loading 图片地址，如果是本地图片，不要忘记把图片添加到你的主题目录下。 Next 主题需将图片放到 `\themes\next\source\images` 目录下，然后引用时：`loadingImg: /images/图片文件名`

## 福利

送上两个gif加载中动图

{% btn https://hasaik.com/images/loading3.gif, 点击下载动图1, download fa-lg fa-fw %}

{% btn https://hasaik.com/images/loading4.gif, 点击下载动图2, download fa-lg fa-fw %}
