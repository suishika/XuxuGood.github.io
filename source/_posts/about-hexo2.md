---
title: 基于TravisCI实现 Hexo 在 Github 和 Coding 的同步部署
copyright: true
abbrlink: 3e5a3bb5
date: 2019-10-12 14:43:34
tags:
    - Hexo
    - TravisCI
    - Github
    - Coding 
categories:
    - Hexo
top: true
type:
keywords:
     - Hexo
     - TravisCI
     - Github
     - Coding 
description:
    - <p>关于TravisCI我这里简单介绍一下，TravisCI是一个在线的、分布式的持续集成服务，可以用来构建和测试托管在Github上的代码，并且其本身就是开源的。TravisCI提供了主流编程语言如C#、Java、JavaScript、Ruby、PHP、Node.js等的支持，相比Jenkins而言，它是一个轻量级的持续集成平台，它会在每次提交代码后，根据配置文件来创建一个虚拟机，并执行用户定义的Build任务，这个虚拟机提供版本控制(Git)、项目构建(Node.js)等，在此前提下，我们下面着手Hexo的自动化部署。</p>
---

&emsp;&emsp;关于TravisCI我这里简单介绍一下，TravisCI是一个在线的、分布式的持续集成服务，可以用来构建和测试托管在Github上的代码，并且其本身就是开源的。TravisCI提供了主流编程语言如C#、Java、JavaScript、Ruby、PHP、Node.js等的支持，相比Jenkins而言，它是一个轻量级的持续集成平台，它会在每次提交代码后，根据配置文件来创建一个虚拟机，并执行用户定义的Build任务，这个虚拟机提供版本控制(Git)、项目构建(Node.js)等，在此前提下，我们下面着手Hexo的自动化部署。

&emsp;&emsp;其原理就是Github和Coding（`小插曲：Coding现在已经被腾讯收购了`）各为TravisCI分配一个token，当我们向 Github 推送新的代码以后，TravisCI就会从代码仓库中拉取代码，并通过 npm 安装依赖生成静态页面，我们将这些静态页面推送到 master 分支，即可完成对Hexo的部署操作。

&emsp;&emsp;对于我个人博客是以 Github 作为代码的主仓库，其上面的 blog-source 分支存放博客的源代码，master 分支存放博客的静态页面，在此基础上，我们同时推送静态页面到 Github 和 Coding 的代码仓库，这样就可以实现两个平台的同步部署，这里的部署自然是指由 Travis 完成的自动化部署。整体的流程如下图所示：

![Travis自动构建流程图](https://s2.ax1x.com/2019/10/21/KlNiCR.png)

# *Github相关操作*
   *   1、按规定仓库名称为 `XXXXX.github.io`，其中 `XXXXX` 为你的用户名，进行创建仓库。
   ![Github建库](https://s2.ax1x.com/2019/10/21/Kl0wjI.png)
   *   2、建好仓库以后我们在仓库中新建一个分支放博客源码，我这里命名为 `blog-source`，建好以后将源码提交到该分支下即可。
   ![blog-source](https://s2.ax1x.com/2019/10/22/K3szy4.png)
   *   3、为了使 Travis 能够将编译好的文件 push 回咱们的 Github，我们需要生成 `token`，步骤如下：
          &emsp;&nbsp;&nbsp;&nbsp;&Delta;在 Github 上 Setting 中找到 [Personal access tokens](https://github.com/settings/tokens) 设置。
          &emsp;&nbsp;&nbsp;&nbsp;&Delta;点 Generate new token，为 `token` 起一个名字，勾选 repo，然后点击生成一个新的 `token` ，并复制下来记录好，待会下面 Travis 配置会用到。（这个只会出现一次！！）

# *Coding相关操作*
   *   1、因为腾讯云已经收购了 [Coding](https://coding.net) ，所以我们直接在 [腾讯云开发者平台](https://dev.tencent.com/production) 注册账号来管理我们的仓库。
   *   2、注册完毕后我们新建一个名为 `XXXXX.coding.me` 的项目，其中 `XXXXX` 为你的用户名，基本操作与 Github 一致，实在不会的可以留言。
   *   3、Coding可以和 Github 一样可以生成一个 `token` 如下图，成功以后将 `token` 保存好，一会下面会用到。
   ![blog-source](https://s2.ax1x.com/2019/10/22/K34SXV.png)
