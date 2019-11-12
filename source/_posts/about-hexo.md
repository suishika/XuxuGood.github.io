---
title: Hexo博客+Next主题深度优化与定制
notshow: false
copyright: true
abbrlink: ab21860c
date: 2019-10-17 16:17:56
tags:
  -Hexo
categories:
  -Hexo
top:
keywords:
  -Hexo
  -优化
password:
description:
---
<div style="max-height:70%;max-width:70%;display:block;margin-left:auto;margin-right:auto">

![tu](https://s2.ax1x.com/2019/11/11/MQtc8S.jpg)
</div>

# *写在前面*
<div class="note warning">
本教程只适用于 Next5 或者 Next6 主题，Next7 开始做了大量修改，并删除了 custom.styl 文件，同时增加了很多在 Next7 之前需要手动配置的功能，请随个人喜好进行版本选择。
</div>
温馨提醒：本文较长，所以在此处新增一个目录，点击以下标题跳转至对应板块：
<div class="tabs">
    <ul class="nav-tabs">
        <li class="tab active"><a href="#-1">搭建博客</a></li>
        <li class="tab"><a href="#-2">Next主题基本配置</a></li>
        <li class="tab"><a href="#-3">Next主题进阶配置</a></li>
        <li class="tab"><a href="#-4">其它建站笔记</a></li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane active" id="-1">
            <ul>
                <li><a href="#环境准备">环境配置</a></li>
                <li><a href="#安装Hexo和Next">安装Hexo和Next</a>
                    <ul>
                        <li><a href="#安装hexo">安装Hexo</a></li>
                        <li><a href="#将Hexo博客部署到Github上">部署到Github</a></li>
                        <li><a href="#安装Next主题">安装Next</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="tab-pane" id="-2"><p>以下为基础配置，点击可调至对应教程：</p>
            <ol>
                <li><a href="#网站favicon图标设置">网站favicon图标设置</a></li>
                <li><a href="#网站页脚小心心定义">网站页脚小心心定义</a></li>
                <li><a href="#关闭底部由hexo强力驱动的广告">关闭底部由hexo强力驱动的广告</a></li>
                <li><a href="#菜单栏设置">菜单栏设置</a></li>
                <li><a href="#Next主题四种风格设置">Next主题四种风格设置</a></li>
                <li><a href="#社交链接设置">社交链接设置</a></li>
                <li><a href="#友情链接设置">友情链接设置</a></li>
                <li><a href="#侧边栏设置">侧边栏设置</a></li>
                <li><a href="#文章开启阅读更多按钮">文章开启阅读更多按钮</a></li>
                <li><a href="#文章元数据设置">文章元数据设置</a></li>
                <li><a href="#文章字数统计设置">文章字数统计设置</a></li>
                <li><a href="#侧边栏头像设置">侧边栏头像设置</a></li>
                <li><a href="#代码块设置">代码块设置</a></li>
                <li><a href="#开启文章打赏按钮">开启文章打赏按钮</a></li>
                <li><a href="#开启相关文章推荐功能">开启相关文章推荐功能</a></li>
                <li><a href="#开启文章版本信息">开启文章版本信息</a></li>
                <li><a href="#代码块风格设置">代码块风格设置</a></li>
                <li><a href="#添加valine评论系统">添加valine评论系统</a></li>
                <li><a href="#开启分享按钮">开启分享按钮</a></li>
                <li><a href="#设置文章阅读量">设置文章阅读量</a></li>
                <li><a href="#开启不蒜子统计功能">开启不蒜子统计功能</a></li>
                <li><a href="#开启本地博客搜索功能">开启本地博客搜索功能</a></li>
                <li><a href="#修改加载特效">修改加载特效</a></li>
                <li><a href="#开启3D背景">开启3D背景</a></li>
            </ol>
        </div>
        <div class="tab-pane" id="-3"><p>以下为进阶配置，点击可调至对应教程：</p>
            <ol>
                <li><a href="#学会使用浏览器F12定位样式">学会使用浏览器F12定位样式</a></li>
                <li><a href="#修改博客字体">修改博客字体</a></li>
                <li><a href="#博客推广及优化">博客推广及优化</a></li>
                <li><a href="#文章底部加上评分小星星">文章底部加上评分小星星</a></li>
                <li><a href="#每篇文章末尾添加致谢">每篇文章末尾添加致谢</a></li>
                <li><a href="#新增文章时自动打开Markdown编辑器">新增文章时自动打开Markdown编辑器</a></li>
                <li><a href="#使用hexo-admin在线发布文章">使用hexo-admin在线发布文章</a></li>
                <li><a href="#修改侧栏滚动条样式">修改侧栏滚动条样式</a></li>
                <li><a href="#侧栏加入已运行的时间">侧栏加入已运行的时间</a></li>
                <li><a href="#添加博客热门文章页面">添加博客热门文章页面</a></li>
                <li><a href="#利用gulp压缩代码">利用gulp压缩代码</a></li>
                <li><a href="#页脚加上微信二维码">页脚加上微信二维码</a></li>
                <li><a href="#文章摘要图片">文章摘要图片</a></li>
                <li><a href="#文章置顶功能">文章置顶功能</a></li>
                <li><a href="#博客背景图片">博客背景图片</a></li>
                <li><a href="#博客写作进阶">博客写作进阶</a></li>
                <li><a href="#写作时使用Emoji">写作时使用Emoji</a></li>
                <li><a href="#插入音乐和视频">插入音乐和视频</a></li>
                <li><a href="#主题自带样式代码块高亮">主题自带样式代码块高亮</a></li>
                <li><a href="#实现图片点击放大效果">实现图片点击放大效果</a></li>
                <li><a href="#给博客首页添加轮播图">给博客首页添加轮播图</a></li>
                <li><a href="#给博客添加豆瓣读书/电影/游戏页面">给博客添加豆瓣读书/电影/游戏页面</a></li>
                <li><a href="#增加二次元看板娘live2d模型">增加二次元看板娘live2d模型</a></li>
                <li><a href="#彩色标签云">彩色标签云</a></li>
                <li><a href="#鼠标点击特效">鼠标点击特效</a></li>
                <li><a href="#Valine评论框样式美化">Valine评论框样式美化</a></li>
                <li><a href="#归档页面美化">归档页面美化</a></li>
                <li><a href="#添加相册功能">添加相册功能</a></li>
                <li><a href="#引入share.js分享功能">引入share.js分享功能</a></li>
            </ol>
        </div>
        <div class="tab-pane" id="-4"><p>以下为建站笔记：</p>
            <ol>
                <li><a href="https://bestzuo.cn/posts/2843657391.html">本博客主题开源</a></li>
                <li><a href="https://bestzuo.cn/posts/3858317073.html">hexo博客模仿知乎卡片样式链接</a></li>
                <li><a href="https://bestzuo.cn/posts/3746574423.html">hexo博客归档页面美化</a></li>
                <li><a href="https://bestzuo.cn/posts/3147047336.html">hexo博客Next主题进阶写作技巧</a></li>
                <li><a href="https://bestzuo.cn/posts/1689445187.html">hexo博客界面美化2.0</a></li>
                <li><a href="https://bestzuo.cn/posts/446056512.html">给博客添加鼠标点击特效</a></li>
                <li><a href="https://bestzuo.cn/posts/hexo-douban.html">在Hexo博客中加入豆瓣读书页面</a></li>
                <li><a href="https://bestzuo.cn/posts/3078353561.html">个人博客SEO优化技巧</a></li>
                <li><a href="https://bestzuo.cn/posts/fb6b5822.html">将博客部署到阿里云服务器上</a></li>
                <li><a href="https://bestzuo.cn/posts/763113948.html">hexo博客valine评论样式美化</a></li>
                <li><a href="https://bestzuo.cn/posts/3307440964.html">使用增强版valine</a></li>
            </ol>
        </div>
    </div>
</div>

***
