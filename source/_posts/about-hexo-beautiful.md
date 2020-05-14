---
title: Hexo博客界面美化
notshow: false
copyright: true
abbrlink: dff7e11c
date: 2019-11-14 10:43:11
tags: [Hexo]
categories: [Hexo]
top:
keywords: [Hexo美化]
password:
description: 本样式美化方式只适用于 Next 主题，并且最好懂一些 CSS 前端知识，以便有些不兼容样式部分可以自行在浏览器中 F12 调试。
---

<div class="note warning">
注意：本样式美化方式只适用于 Next 主题，并且最好懂一些 CSS 前端知识，以便有些不兼容样式部分可以自行在浏览器中 F12 调试。
</div>

{% linkCard https://github.com/iissnan/hexo-theme-next,Next5主题的Github地址 %}

我的个人博客样式都是基于 Next5 主题的，如果你用的是 Next6 主题，那么会有一部分样式不是很兼容， 需要自己在浏览器中定位该样式并做一些调整。

修改的话就找到next主题目录下的 `next\source\css\_custom\custom.styl` ，这个文件是Next主题预留给用户自定义修改css样式的文件，所以我们绝大多数全局样式都在这里进行修改即可。

以下附上我的 `custom.styl` 文件内容供大家参考，注意出现问题一定要在浏览器中调试修改！

文件位置：hexo/themes/next/source/css/_custom/custom.styl

```BASH
// Custom styles.
// 自定义的侧栏时间样式
#days {
  display: block;
  color: rgb(7, 179, 155);
  font-size: 13px;
  //margin-top: 15px;
  //margin-left: 35px;
  //margin-bottom: 15px;
}

/*菜单*/
.menu-item:hover {
  transform: scale(1.1);
  box-shadow: 10px 10px 15px 2px rgba(0, 0, 0, .12), 0 0 6px 0 rgba(104, 104, 105, 0.1);
  //border-radius: 3px;
}

/*近期文章*/
.my-links-of-blogroll-li:hover {
  transform: scale(1.1);
  box-shadow: 10px 10px 15px 2px rgba(0, 0, 0, .12), 0 0 6px 0 rgba(104, 104, 105, 0.1);
}

/* 排行榜 */
.my-article-top:hover {
  transform: scale(1.1);
  box-shadow: 10px 10px 15px 2px rgba(0, 0, 0, .12), 0 0 6px 0 rgba(104, 104, 105, 0.1);
  border-radius: 30px;
  width: 580px;
  padding: 5px 10px;
  transition-duration: 0.15s;
  +mobile() {
    width: 315px;
    //display: block;//不换行
    //margin-left: 18px;
  }
  //display:flex;
}

/*归档页样式优化 began*/
.page-archive .archive-page-counter {
  font-size: 18px;
  background-color: #49b1f5;
  padding-left: 10px;
  padding-right: 10px;
  border-radius: 8px;
  color: #fff;
  +mobile() {
    font-size: 16px;
  }
}

.my-post-time {
  font-size: 11px;
  position: absolute;
  color: #fff;
  background-color: #49b1f5;
  border-radius: 5px;
  padding-left: 5px;
  padding-right: 5px;
  margin-left: 15px;
}

.mypost {
  position: relative;
  margin-bottom: 1rem;
  -webkit-transition: all .2s ease-in-out;
  -moz-transition: all .2s ease-in-out;
  -o-transition: all .2s ease-in-out;
  -ms-transition: all .2s ease-in-out;
  transition: all .2s ease-in-out;
}

a.my-post-title-link:before {
  top: 10px;
  width: 18px;
  height: 18px;
  content: "📚";
  margin-right: 5px;
  font: normal normal normal 14px / 1 FontAwesome;
  font-size: 15px;
  line-height: 18px;
}

.my-post:hover {
  transform: scale(1.1);
  box-shadow: 10px 10px 15px 2px rgba(0, 0, 0, .12), 0 0 6px 0 rgba(104, 104, 105, 0.1);
  border-radius: 30px;
  width: 550px;
  padding: 1px 10px;
  margin-left: 25px;
  font-size: 16px;
  transition-duration: 0.15s;
  +mobile() {
    width: 260px;
    margin-left: 18px;
  }
  //display:flex;
}

a.my-post-title-link {
  text-decoration: none;
  font-size: 15px;
  font-weight: 400;
  +mobile() {
    font-size: 14px;
  }
}

.my-post-title {
  display: block;
  margin-left: 4.5rem;
  color: #4c4948;
  text-decoration: none;
  font-size: .8rem;
  cursor: pointer;
  +mobile() {
    //margin-left: 4rem;
  }
}

.my-post-header {
  position: top;
  margin-bottom: 1rem;
  -webkit-transition: all .2s ease-in-out;
  -moz-transition: all .2s ease-in-out;
  -o-transition: all .2s ease-in-out;
  -ms-transition: all .2s ease-in-out;
  transition: all .2s ease-in-out;
}

//.my-post-title-link{
//  font-size: 16px;
//  font-weight: 500;
//}
.my-post-meta {
  position: absolute;
  color: #99a9bf;
  width: 80px;
  color: #114142;
}

div.post-block.tag .collection-title h2 {
  border-width: 1px;
  border-style: solid;
  border-color: #3f3f3f;
  border-radius: 20px;
  font-size: 22px;
  background-color: #b4e8fa;
  padding: 2px 15px;
  letter-spacing: 1.5px;
  box-sizing: border-box;
  color: #3f3f3f;
  display: inline-block;
  margin: 10px 0 10px;
  text-align: center;
  +mobile() {
    font-size: 18px;
  }
}

.category-list-link:hover {
  transform: scale(1.1);
  box-shadow: 10px 10px 15px 2px rgba(0, 0, 0, .12), 0 0 6px 0 rgba(104, 104, 105, 0.1);
  border-radius: 8px;
  padding: 1px 1px;
  margin-left: 5px;
  font-size: 16px;
  transition-duration: 0.15s;
  //display:flex;
}

/*归档页样式优化 end */

.main {
  padding-bottom: 150px;
}

//hexo next主题下，自动更换背景图片 began
// 图片来源https://source.unsplash.com/
body {
  //background: url(https://source.unsplash.com/random/1920x1080);
  background-image: url(/images/bg1.jpeg);
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: 50% 50%;
}

//hexo next主题下，自动更换背景图片 end

/*评论数*/
.posts-expand .post-comments-count {
  display: none;
}

/*鼠标样式*/
* {
  cursor: url(/images/default.cur), auto;
}

:active {
  //cursor: url(/images/pointer.cur),auto
}

:link {
  cursor: url(/images/pointer.cur), auto
}

/*文章底部评分相关*/
.post-widgets {
  //padding-top: 9px;
  margin-bottom: 45px;
  margin-top: 30px;
}

/*文章底部标签样式*/
.posts-expand .post-tags a {
  -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, .12), 0 1px 2px rgba(0, 0, 0, .24);
  -moz-box-shadow: 0 1px 3px rgba(0, 0, 0, .12), 0 1px 2px rgba(0, 0, 0, .24);
  box-shadow: 0 1px 3px rgba(0, 0, 0, .12), 0 1px 2px rgba(0, 0, 0, .24);
  font-family: 'Comic Sans MS', sans-serif;
  transition: .2s ease-out;
  padding: 3px 5px;
  margin: 5px;
  background: #f5f5f5;
  border-bottom: none;
  border-radius: 15px;

  +mobile() {
    padding: 1px 3px;
    font-size: 8px;
  }

  &:hover {
    background: rgba(100, 154, 182, 0.902);
    color: #fff;
    -webkit-box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    -moz-box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  }
}

// pc主页文章添加阴影效果
.post {
  margin-top: 0px;
  margin-bottom: 50px;
  padding: 25px;
  -webkit-box-shadow: 0 0 5px rgba(202, 203, 203, .5);
  -moz-box-shadow: 0 0 5px rgba(202, 203, 204, .5);
}

/* 1~4级标题设置 */
h1,
h2,
h3,
h4,
strong {
  font-weight: 600;
  color: #2c3e50;
}

blockquote { // PC端>符号表示的内容样式
  font-size: 15px;
  //background: #e8f7ef;
  //border-left-color: #42b983;
  background: #d9efdc5e;
  border-left-color: #0fc530 85;
}

.tip, blockquote {
  padding: 12px 24px 12px 30px;
  margin: 1em 0;
}

p {
  margin: 10px 0 10px 0;
}

/*文章页*/
.posts-expand {
  margin: 0 1px;
  padding-top: 0px;
}

.posts-expand .post-body p {
  font-size: 16px;
  letter-spacing: 1px;
  margin: 3px 0;
  padding-bottom: 4px;
}

/* 一到六级标题设置 */
.posts-expand .post-body h1,
.posts-expand .post-body h2,
.posts-expand .post-body h3,
.posts-expand .post-body h4,
.posts-expand .post-body h5,
.posts-expand .post-body h6 {
  padding-top: 10px;
  margin-bottom: 10px;
  border-bottom: 1px solid #eee;
  padding-bottom: 10px;
}

/*修改h1前面图标*/
.posts-expand .post-body h1:before {
  top: 10px;
  width: 18px;
  height: 18px;
  content: "⛅";
  font-size: 18px;
  line-height: 18px;
  margin-right: 16px;

}

/*修改h2前面图标*/
.posts-expand .post-body h2:before {
  top: 10px;
  width: 18px;
  height: 18px;
  content: "🌞";
  font-size: 18px;
  line-height: 18px;
  margin-right: 16px
}

/*修改h3前面图标*/
.posts-expand .post-body h3:before {
  top: 10px;
  width: 18px;
  height: 18px;
  content: "🔍";
  font-size: 18px;
  line-height: 18px;
  margin-right: 16px;
}

.posts-expand .post-body ul li {
  margin-bottom: 10px;
  //list-style: none;
  list-style: disc;
  color: #000;
  font-size: 15px;
  //list-style: disc;
  //margin-left: 3%;
}

.posts-expand .post-body ul li p {
  //margin-bottom: 10px;
  //border-radius: 6px;
  text-align: left;
}

/* 有序图标设置 */
ol {
  padding-left: 0;
  font-size: 15px;
  margin-top: .4rem;
  //padding: 0 0 0 .8rem;
  list-style: none;
  counter-reset: ol-li;
}

.posts-expand .post-body ol li:before {
  display: block;
  float: left;
  width: 17px;
  height: 17px;
  line-height: 16px;
  margin: .4rem 12px 0 0;
  color: #fff;
  font-size: 15px;
  font-weight: 500;
  font-style: normal;
  background-color: #49b1f5;
  border-radius: 50%;
  text-align: center;
  content: counter(ol-li);
  counter-increment: ol-li;
}

//.posts-expand .post-body ul li {
//  margin-bottom: 10px;
//  list-style: none;
//  color: #000;
//}
//
//.posts-expand .post-body ul li:before {
//  display: block;
//  float: left;
//  width: 12px;
//  height: 12px;
//  line-height: 28px;
//  margin: .5rem 12px 0 0;
//  color: #fff;
//  font-size: 15px;
//  font-weight: 700;
//  font-style: normal;
//  background-color: #49b1f5;
//  border-radius: 50%;
//  text-align: center;
//  content: "";
//}

//自定义回到顶部样式
.back-to-top {
  //right: 60px;
  width: 70px; //图片素材宽度
  height: 900px; //图片素材高度
  top: -900px;
  bottom: unset;
  transition: all .5s ease-in-out;
  background: url("/images/scroll.png");
  //隐藏箭头图标

  > i {
    display: none;
  }

  &.back-to-top-on {
    bottom: unset;
    top: 100vh < (900px + 200px) ? calc(100vh - 900px - 200px):0px;
  }
}

//代码块复制按钮
.highlight {
  //方便copy代码按钮（btn-copy）的定位
  //position: relative;
  position: static;
}

highlight-wrap {
  background: #008b89;
}

.btn-copy {
  display: inline-block;
  cursor: pointer;
  background-color: #eee;
  background-image: linear-gradient(#fcfcfc, #eee);
  border: 1px solid #d5d5d5;
  border-radius: 3px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  -webkit-appearance: none;
  font-size: 13px;
  font-weight: 700;
  line-height: 20px;
  color: #333;
  -webkit-transition: opacity .3s ease-in-out;
  -o-transition: opacity .3s ease-in-out;
  transition: opacity .3s ease-in-out;
  padding: 2px 6px;
  position: absolute;
  right: 5px;
  top: 5px;
  opacity: 0;
}

.btn-copy span {
  margin-left: 5px;
}

.highlight:hover .btn-copy {
  opacity: 1;
}

//pc端
.read-over { //本文阅读结束
  text-align: center;
  margin-top: 20px;
  color: #ea103d91;
  font-size: 18px;
}

.share_reward { //pc打赏
  margin: 10px auto;
  width: 90%;
  text-align: center;
}

#rewardButton { //打赏
  margin: 15px auto;
}

// 代码块样式 Custom styles.
//code {
//  color: #ff7600;
//  background: #fbf7f8;
//  margin: 2px;
//}
//行内代码样式

code {
  color: #c7254e;
  background: #f9f2f4;
  border: 1px solid #d6d6d6;
  padding: 1px 4px;
  word-break: break-all;
  border-radius: 4px;
}

// 大代码块的自定义样式

.highlight, pre {
  margin: 0px 0;
  //padding: 5px;
  border-radius: 0px;
}

.highlight, pre {
  border: 1px solid #21252b;
}

.post-body {
  color: #000;
}

.post-body .note { //提示条
  font-size: 15px;
}

/*文章标题字体*/

.posts-expand .post-title {
  font-size: 26px;
  letter-spacing: 1px;
  font-weight: 700;
  text-align: center;
  +mobile() {
    font-size: 20px;
    //margin: 10px;
  }
}

/*文章标题动态效果*/

.posts-expand .post-title-link::before {
  background-image: linear-gradient(90deg, #a166ab 0%, #ef4e7b 25%, #f37055 50%, #ef4e7b 75%, #a166ab 100%);
}

/*文章大标题*/

.posts-expand .post-title-link:hover {
  transform: scale(1.1);
}

.posts-expand .post-meta {
  //margin: 3px 0 20px 0;
  margin-bottom: 20px !important;
}

// 文章内链接文本样式

.post-body a {
  color: #0593d3;
  border-bottom: none;
  border-bottom: 1px solid #0593d3;
  //text-decoration: underline  // none || underline || blink || overline || line-through

  &:hover {
    color: #fc6423;
    //border-bottom: none;
    //background: white;
    text-decoration: none;
    border-bottom: 1px solid #fc6423;
  }
}

//  精品文章 began

.jingping {
  background: #00a8c3;
  padding: 2px 4px 2px 4px;
  color: #fff;
}

//  精品文章 end

// new ------
//热评文章

.ds-top-threads li a {
  padding-left: 5px;
  transition: border-width 0.2s linear 0s, color 0.2s linear 0s;
  border-bottom: none;
}

.ds-top-threads li a:hover {
  border-left: 8px solid #4d768c;
}

/*相关文章推荐 pc样式设置*/

summary {
  outline: 0;
  cursor: pointer;
  margin-top: 15px;
  +mobile() { /*手机端*/
    font-size: 14px;
    margin-top: 10px;
  }
}

details {
  margin-left: 20px;
}

details .popular-posts {
  +mobile() {
    margin: 5px -12px;
  }
}

.popular-posts-header {
  margin-top: 45px;
  font-size: 20px;
  font-weight: 900;
  border-bottom: 1px solid #eee;
  +mobile() { /*手机端*/
    font-size: 18px;
    margin-top: 25px;
  }
}

ul.popular-posts .popular-posts-item .popular-posts-title a {
  border-bottom: 1px solid #999;

  &:hover {
    border-bottom: none;
  }
}

//小胡同背景图

.xiaohutong-img-class {
  width: 960px;
  height: 660px;
}

//友链页样式 begain -------->

#links {
  margin-top: 5rem;
}

.links-content {
  margin-top: 1rem;
}

.link-navigation::after {
  content: " ";
  display: block;
  clear: both;
}

.card {
  width: 300px;
  font-size: 1rem;
  padding: 10px 20px;
  border-radius: 4px;
  transition-duration: 0.15s;
  margin-bottom: 1rem;
  display: flex;
}

.card:nth-child(odd) {
  float: left;
}

.card:nth-child(even) {
  float: right;
}

.card:hover {
  transform: scale(1.1);
  box-shadow: 0 2px 6px 0 rgba(0, 0, 0, 0.12), 0 0 6px 0 rgba(0, 0, 0, 0.04);
  background-image: linear-gradient(to right, #6a11cb 0, #2575fc 100%);
}

.card a {
  border: none;
}

.card .ava {
  width: 3rem !important;
  height: 3rem !important;
  margin: 0 !important;
  margin-right: 1em !important;
  border-radius: 4px;
}

.card .card-header {
  font-style: italic;
  overflow: hidden;
  width: 236px;
}

.card .card-header a {
  font-style: normal;
  color: #2bbc8a;
  font-weight: bold;
  text-decoration: none;
}

.card .card-header a:hover {
  color: #d480aa;
  text-decoration: none;
}

.card .card-header .info {
  font-style: normal;
  color: #a3a3a3;
  font-size: 14px;
  min-width: 0;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
}

span.focus-links {
  font-style: normal;
  margin-left: 10px;
  position: unset;
  left: 0;
  padding: 0 7px 0 5px;
  font-size: 11px;
  border-color: #42c02e;
  border-radius: 40px;
  line-height: 24px;
  height: 22px;
  color: #fff !important;
  background-color: #42c02e;
  display: inline-block;
}

span.focus-links:hover {
  background-color: #318024;
}

.friends-btn {
  text-align: center;
  color: #555 !important;
  background-color: #fff;
  border-radius: 3px;
  font-size: 15px;
  box-shadow: inset 0 0 10px 0 rgba(0, 0, 0, .35);
  border: none !important;
  transition-property: unset;
  padding: 0 15px;
  margin: inherit;
}

.friends-btn:hover {
  color: rgb(255, 255, 255) !important;
  border-radius: 3px;
  font-size: 15px;
  box-shadow: inset 0px 0px 10px 0px rgba(0, 0, 0, 0.35);
  background-image: linear-gradient(90deg, #a166ab 0%, #ef4e7b 25%, #f37055 50%, #ef4e7b 75%, #a166ab 100%);
  margin: inherit;
}

//友链页样式 end    -------->

//首页头部样式

.header {
  //background: url("/images/header-bk.jpg");
}

.site-meta {
  float: none;
}

.menu {
  float: none;
}

.logo-line-before,
.logo-line-after {
  display: none;
}

.menu .menu-item a {
  font-size: 14px;
  color: rgb(15, 46, 65);
  border-radius: 4px;
}

.site-meta {
  margin-left: 0px;
  text-align: center;
  //background: #f7edd9
  //background-image: linear-gradient(90deg,#f79533 0,#f37055 15%,#ef4e7b 30%,#a166ab 44%,#5073b8 58%,#1098ad 72%,#07b39b 86%,#6dba82 100%)!important;
  background-image: url(/images/bg.jpeg)
}

.site-meta .site-title {
  font-weight: 900;
  font-size: 28px;
  font-family: 'Comic Sans MS', sans-serif;
  color: #fff;
}

.title1 {
  color: rgb(66, 133, 244)
}

.title2 {
  color: rgb(234, 67, 53)
}

.title3 {
  color: rgb(251, 188, 5)
}

.title4 {
  color: rgb(66, 133, 244)
}

.title5 {
  color: rgb(52, 168, 83)
}

.title6 {
  color: rgb(234, 67, 53)
}

.title7 {
  color: rgb(66, 133, 244)
}

.title8 {
  color: rgb(234, 67, 53)
}

.site-subtitle {
  color: #213951;
  font-weight: bold
}

#myheartbeat {
  animation: heartAnimate 1.33s ease-in-out infinite;
  color: #f50404;
}

//首页尾部样式

.footer {
  //background: none;
  //font-size: 14px;
}

.footer-inner {
  font-family: 'Comic Sans MS', sans-serif;
  text-align: center;
  color: #4c618f;
}

//侧边栏信息样式修改

.site-author-name {
  margin: 18px 0 0;
  color: #090909;
  font-family: 'Comic Sans MS', sans-serif;
}

.links-of-blogroll {
  font-size: 13px;
  margin-bottom: 22px;
}

.links-of-author {
  margin-top: 10px;
  //margin-bottom: 58px;
}

.site-overview { //左侧socia标签居中
  text-align: center;
}

.sidebar-inner {
  color: #649ab6;
}

.sidebar {
  margin-left: auto; /* for IE */
  margin-left: inherit;
  box-shadow: inset 2px 2px 40px #bdb2b2;
}

.sidebar a {
  color: #649ab6;
  border-bottom-color: #649ab6;
  border-bottom: none;
}

.sidebar a:hover {
  color: #0c0b0b;
}

.site-state-item {
  display: inline-block;
  padding: 8px 18px;
  border-left: 1px solid #649ab6;
}

.sidebar-nav .sidebar-nav-active {
  color: #649ab6;
  border-bottom-color: #649ab6;
}

.sidebar-nav li:hover {
  color: #0c0b0b;
}

//侧栏描述样式

.site-description motion-element {

}

//侧栏按钮样式

.sidebar-toggle {
  background: #649ab6;
}

//文章目录样式

.post-toc .nav .active > a {
  color: #4f7e96;
}

.post-toc ol a:hover {
  color: #7784ba;
}

.sidebar-nav .sidebar-nav-active:hover {
  color: #37596c;
}

a {
  border-bottom: none;
}

//首页阅读全文样式

.post-button .btn {
  color: #555;
  background-color: rgb(255, 255, 255);
  border-radius: 3px;
  font-size: 15px;
  box-shadow: inset 0px 0px 10px 0px rgba(0, 0, 0, 0.35);
  border: none !important;
  transition-property: unset;
  padding: 0px 15px;
  margin: inherit;
}

.post-button .btn:hover {
  color: rgb(255, 255, 255);
  border-radius: 3px;
  font-size: 15px;
  box-shadow: inset 0px 0px 10px 0px rgba(0, 0, 0, 0.35);
  background-image: linear-gradient(90deg, #a166ab 0%, #ef4e7b 25%, #f37055 50%, #ef4e7b 75%, #a166ab 100%);
  margin: inherit;
}

//.post-button a{
//  border-bottom: 1px solid #666;
//}
//.post-button a:hover {
//  color: #7784ba;
//}

// 自定义页脚跳动的心样式 began
@keyframes heartAnimate {
  0%, 100% {
    transform: scale(1);
  }
  10%, 30% {
    transform: scale(0.9);
  }
  20%, 40%, 60%, 80% {
    transform: scale(1.1);
  }
  50%, 70% {
    transform: scale(1.1);
  }
}

.with-love {
  animation: heartAnimate 1.33s ease-in-out infinite;
  color: rgb(255, 113, 168);
}

// 自定义页脚跳动的心样式 end

/*修改选择字体块背景颜色*/

::selection {
  background: #fff159;
  color: #222;
}

.pagination {
  margin: 50px;
  text-align: center;
  border-top: 0px;
}

/* 页码数字显示当前页码样式设置 */

.pagination .page-number.current {
  background-color: #49b1f5;
  background: #49b1f5;
  border-radius: 50%;
}

/* 页码样式设置 */

.pagination .page-number {
  border: 3px solid #49b1f5;
  border-radius: 50%;
}


/*valine 评论系统样式 began ------------------> */

/*valine 评论系统样式 end  ------------------> */


// 适配手机样式 began ------------------------>
@media (max-width: 767px

) {
  /*手机端body体显示*/
  body {
    background-image: none;
    font-size: 16px;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    color: #34495e;
  }

  /*手机端菜单栏样式*/
  .menu {
    display: flex;
    margin-left: 5px;
    float: none !important;
  }

  //.menu-item{
  //  display: inline;
  //}
  ////不显示站点地图li
  //.menu .menu-item menu-item-sitemap{
  //  display:none
  //}
  .menu .menu-item a {
    /*font-weight: 600;*/
    color: #2c3e50;
    font-size: 14px;
    //padding: 1px 7px;
    padding: 5px 12px;
  }

  //选中菜单样式
  .menu-item-active a:after {
    top: -10%;
    //top: 66%;
    right: 24px;
    //三角形
    //width:0; height:0; border:10px solid; border-color:#aececb #f5f7f9 #f5f7f9 #f5f7f9;
  }

  blockquote { // 手机端>符号表示的内容样式
    //padding: 4px 10px;
    //margin: 10px auto;
    //border-left: 3px solid #ddd;
  }

  blockquote p { // 手机端>符号表示的内容样式
    font-size: 13px;
  }

  .back-to-top {
    display: none; //不显示
    right: 0px;
    opacity: .2;
  }

  /*手机屏幕下多级标签样式修改*/
  .posts-expand .post-body h1 {
    margin: 0 0 0em;
  }

  .posts-expand .post-body h2,
  .posts-expand .post-body h3 {
    pointer-events: none;
  }

  .posts-expand .post-body h1,
  .posts-expand .post-body h2,
  .posts-expand .post-body h3,
  .posts-expand .post-body h4 {
    pointer-events: auto;
    color: #2c3e50;
  }

  .posts-expand .post-body h1:before
  .posts-expand .post-body h2:before
  .posts-expand .post-body h3:before
  .posts-expand .post-body h4:before
  .posts-expand .post-body h5:before
  .posts-expand .post-body h6:before {
    display: none;
  }

  .posts-expand .post-body h2 {
    padding-bottom: 0.7em;
    border-bottom: 1px solid #ddd;
  }

  .posts-expand .post-body h3 {
    line-height: 1.2;
    position: relative;
  }

  .posts-expand .post-body h3 > a:before {
    content: "";
    color: #42b983;
    position: absolute;
    left: -0.7em;
    margin-top: -0.05em;
    padding-right: 0.5em;
    font-size: 1.2em;
    line-height: 1;
    font-weight: bold;
  }

  .posts-expand .post-body figure {
    //margin: 1.2em 0;
  }

  /*手机段落样式修改*/
  .posts-expand .post-body p {
    line-height: 1.6em;
    text-align: left;
    font-size: 14px;
    //display: contents;//文字左对齐
    margin: 5px 0;
    padding-bottom: 6px;
    position: relative;
    z-index: 1;
    color: #5e6d82;
  }

  /* 手机端 列表样式修改*/
  .posts-expand .post-body ul,
  .posts-expand .post-body ol {
    position: inherit;
  }

  .posts-expand .post-body ul ul,
  .posts-expand .post-body ol ul,
  .posts-expand .post-body ul ol,
  .posts-expand .post-body ol ol {
    margin: 0;
  }

  .posts-expand .post-body ul li {
    font-size: 13px;
    //margin-bottom: 0px !important;
  }

  .posts-expand .post-body a {
    //color: #000;
    font-weight: 400;
  }

  p {
    line-height: 1.6em;
    margin: 1.2em 0 -1.2em;
    padding-bottom: 1.2em;
    position: relative;
    z-index: 1;
    font-size: 14px;
    word-spacing: 0.05em;
  }

  /*手机端对ul li展示优化*/
  .posts-expand .post-body ul li:before {
    margin: .4rem 12px 0 0;
  }

  li {
    font-size: 14px;
    color: #5e6d82;
  }

  .post-button a {
    font-size: 16px;
  }

  .posts-expand .post-meta {
    font-size: 13px;
    text-align: center;
    margin: 1px 0 20px 0;
  }

  /*设置不展示字数统计*/
  .posts-expand .post-meta .post-wordcount {
    //display: none;
  }

  /*手机端评论数*/
  //.posts-expand .post-comments-count {
  //  +mobile() { display: unset; }
  //}
  .page-post-detail .post-meta {
    margin: 10px 0px;
  }

  .page-post-detail .post-title {
    font-weight: 600;
    font-size: 20px !important;
    //padding-top: 10px;
    //padding-bottom: 15px;
  }

  .my_post_copyright { //版权所有
    width: 95%;
    //padding: .1em 1em;
    font-size: .73rem
    margin: 2em auto 0
  }

  .my_post_copyright p {
    font-size: 13px;
    margin: 5px;
    line-height: 1.2em;
    padding-bottom: 0.5em;
  }

}

/*适应手机屏幕设置*/
@media (max-width: 767px) {
  .header-inner {
    margin-bottom: 10px !important;
    background: none;
    //overflow: auto; //下拉标题是否浮动
  }

  .posts-expand .post-body h1 {
    padding-top: 20px;
  }

  .post-button {
    text-align: center;
  }

  .posts-expand .post-body h2,
  .posts-expand .post-body h3 {
    pointer-events: none;
  }

  .posts-expand .post-body h1,
  .posts-expand .post-body h2,
  .posts-expand .post-body h3,
  .posts-expand .post-body h4 {
    pointer-events: auto;
    color: #2c3e50;
  }

  .posts-expand .post-body h1:before
  .posts-expand .post-body h2:before
  .posts-expand .post-body h3:before
  .posts-expand .post-body h4:before
  .posts-expand .post-body h5:before
  .posts-expand .post-body h6:before {
    display: none;
  }

  .posts-expand .post-body h2 {
    padding-bottom: 0.7em;
    border-bottom: 1px solid #ddd;
  }

  .posts-expand .post-body h3 {
    line-height: 1.2;
    position: relative;
  }
}

/*手机端显示设置信息*/
@media (max-width: 767px) {
  /*手机端代码行上text文档设置*/
  .highlight figcaption {
    font-size: 12px;
  }

  /*手机端显示代码行数背景设置*/
  .highlight .gutter pre {
    padding-left: 2px;
  }

  /*手机端显示代码行数字体大小*/
  .highlight, pre {
    font-size: 13px;
  }

  /*手机端显示代码字体大小*/
  .code span {
    font-size: 12px;
  }

  div#comments.comments.v {
    margin-left: 0px !important;
    margin-right: 0px !important;
  }

  .comments {
    margin: 20px 10px 0;
  }
}

//手机适配文章底部信息
@media (max-width: 767px) {
  .main {
    padding-bottom: 130px;
  }

  .footer {
    font-size: 12px;
  }

  .read-over { //本文阅读结束
    text-align: center;
    margin-top: 20px;
    color: #ea103d91;
    font-size: 12px;
  }

  .share_reward { //打赏
    font-size: 12px;
    padding: 10px 0;
    margin: 5px auto;
    width: 90%;
    text-align: center;
  }

  #rewardButton {
    margin: 15px auto;
  }

  #rewardButton span { //打赏
    display: inline-block;
    width: 50px;
    height: 35px;
  }

  #QR {
    padding-top: 5px;
  }

  #QR a {
    border: 0;
  }

  #QR img {
    width: 60px;
    //max-width: 50%;
    display: inline-block;
    margin: 0.8em 2em 0 2em;
  }

  .post-copyright { //外版权
    padding: .1em .5em;
    margin: 0em 0 0;
    border-left: 2px solid #ff1700;
  }

  .post-copyright li { //外版权
    font-size: 13.5px;
  }

  .posts-expand .post-tags {
    margin-top: 10px;
    font-size: 8px;
  }

  .post-nav-item a {
    font-size: 12px;
    line-height: unset;
  }

  .pagination { // 分页按钮
    margin: 20px;
    text-align: center;
    border-top: 0px;
  }

  /*TopX适应手机屏幕设置*/
  #top p {
    font-size: 12px;
    display: inline-block; //不换行
  }

  .post-body .note { //提示条
    margin: 10px auto;
    font-size: 14px;
  }

  .post-body .note.info p {
    font-size: 13px;
  }

  .post-body .tabs .tab-content .note {
    margin: 10px auto;
    font-size: 14px;
  }

}

@media (max-width: 767px) {

  //小胡同背景图
  .xiaohutong-img-class {
    width: 360px;
    height: 260px;
  }

  // 小胡同里tab页
  .post-body .tabs ul.nav-tabs {
    display: flex;
  }

  /* 手机端文章布局 */
  .post {
    margin-bottom: 20px;
    padding: 10px;
    //-webkit-box-shadow: 0 0 5px rgba(202, 203, 203, .5);
    //-moz-box-shadow: 0 0 5px rgba(202, 203, 204, .5);
  }

  //手机友链页
  .card {
    width: 88%;
    padding: 3px 20px;
    margin-bottom: 0rem;
  }

  #links {
    margin-top: 3rem;
  }

  /*移动端 本地搜索框美化*/
  .local-search-popup {
    top: 10%;
    margin: 10px 35px;
    width: 80%;
    height: 60%;
  }

  .local-search-popup .search-icon, .local-search-popup .popup-btn-close {
    color: #15a1d8 f2;
  }

  .local-search-popup .local-search-input-wrapper input {
    padding-left: 10px;
    height: 21px;
    background-color: rgb(255, 255, 255);
  }

  .local-search-popup .popup-btn-close {
    border-left: none;
  }

  .local-search-popup p.search-result {
    padding-bottom: 1.2em;
    font-size: 13px;
    margin: .1em 0 .5em;
  }

  .local-search-popup a.search-result-title {
    font-size: 14px;
  }

}

// 适配手机样式 end  ------------------------>
```
