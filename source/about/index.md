---
layout: page
title: 关于
meta:
  header: []
  footer: []
sidebar: []
valine:
  placeholder: 有什么想对我说的呢？
---

{# Botui聊天机器人样式 #}
<link rel="stylesheet" href="/css/botui.min.css" />
<link rel="stylesheet" href="/css/botui-theme-default.css" />

<div class="entry-content">
    <div id="hello-xuxuy" class="pop-container">
        <p style="text-align: center;">真（ま）白（しろ）</p>
        <p style="text-align: center;">对话中...</p>
        <bot-ui></bot-ui>
    </div>
</div>

<div class="single-reward">
    <div class="reward-open">赏
        <div class="reward-main">
            <ul class="reward-row">
                <li class="alipay-code"><img
                        src="https://cdn.jsdelivr.net/gh/XuxuGood/cdn@master/blogImages/reward/AliPayQR.png"></li>
                <li class="wechat-code"><img
                        src="https://cdn.jsdelivr.net/gh/XuxuGood/cdn@master/blogImages/reward/WeChatQR.png"></li>
            </ul>
        </div>
    </div>
</div>

{% p left, 蟹蟹大噶们 ~ (<em>^__^</em>) Y…… %}

| 赞助人 |  金额  |  时间   | 渠道   | 留言 |
| :----: | :----: | :----: | :----: | :----: |
| YourBatman | ￥ 3.33 | 2020-05-08 | 微信 | 喜欢的风格，支持一下 |
| *生 | ￥ 8.88 | 2020-04-06 | 微信 | blog很酷！谢谢！ |
| 小包小白 | ￥ 0.96 | 2019-10-12 | 微信 |  |
| Ricardo Li | ￥ 6.66 | 2019-11-27 | 支付宝 |  |
| 玩家 | ￥ 0.01 | 2019-11-28 | 微信 |  |
| 宝贝&nbsp;<i class="fa fa-heartbeat" id="myheartbeat"></i> | ￥ 5.21 | 2020-01-06 | 支付宝 |  |

<br/>
<br/>

> 有什么话要对我说吗？这里是你畅所欲言的地方，可以咨询，可以交流，可以感叹，可以发飙，但 {% span red, 不！ %}{% span green, 可！ %}{% span blue, 以！ %}订外卖

{# 打赏按钮样式 #}
<style>
.single-reward {
    position: relative;
    width: 100%;
    margin: 30px auto;
    text-align: center;
    z-index: 999
}

.single-reward .reward-open {
    position: relative;
    line-height: 22px;
    width: 35px;
    height: 35px;
    padding: 7px;
    color: #fff;
    text-align: center;
    display: inline-block;
    border-radius: 100%;
    background: #d34836;
    cursor: url(https://cdn.jsdelivr.net/gh/XuxuGood/cdn@master/blogImages/site-img/ayuda.cur), auto;
}

.single-reward .reward-main {
    position: absolute;
    top: 45px;
    left: -156px;
    margin: 0;
    padding: 4px 0 0;
    width: 355px;
    background: 0 0;
    display: none;
    animation: main .4s
}

.reward-open:hover .reward-main {
    display: block
}

.single-reward .reward-row {
    margin: 0 auto;
    padding: 20px 15px 10px;
    background: #f5f5f5;
    display: inline-block;
    border-radius: 4px;
}

.single-reward .reward-row:before {
    content: "";
    width: 0;
    height: 0;
    border-left: 13px solid transparent;
    border-right: 13px solid transparent;
    border-bottom: 13px solid #f5f5f5;
    position: absolute;
    top: -9px;
    left: -9px;
    right: 0;
    margin: 0 auto
}

.single-reward .reward-row li {
    list-style-type: none;
    padding: 0 12px;
    display: inline-block
}

.reward-row li img {
    width: 130px;
    max-width: 130px;
    border-radius: 3px;
    position: relative
}

.reward-row li::after {
    margin-top: -10px;
    display: block;
    font-size: 13px;
    color: #121212;
}

.alipay-code:after {
    content: "支付宝"
}

.wechat-code:after {
    content: "微信"
}
.article .article-entry .single-reward ul li:before{
    content: none
}

</style>

{# Botui聊天机器人js #}
<script src="https://cdn.jsdelivr.net/vue/latest/vue.min.js"></script>
<script src="/js/botui.js"></script>
<script src="/js/botui-message.js"></script>
