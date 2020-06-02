---
title: 关于博主
date: 2019-10-10 16:43:04
type: "about"
---

<div class="entry-content">
    <div id="hello-xuxuy" class="pop-container"
         style="">
        <div style="text-align: center;">
            <p>真（ま）白（しろ）</p>
            <p>对话中...</p>
        </div>
        <bot-ui></bot-ui>
    </div>
</div>
<div class="single-reward">
    <div class="reward-open">赏
        <div class="reward-main">
            <ul class="reward-row">
                <li class="alipay-code"><img
                        src="/images/alipay.jpg"></li>
                <li class="wechat-code"><img
                        src="/images/wechatpay.jpg"></li>
            </ul>
        </div>
    </div>
</div>

<p>谢各位大佬赏~ (<em>^__^</em>) Y……</p>

<table>
    <thead>
    <tr>
        <th align="center">赞助人</th>
        <th align="center">金额</th>
        <th align="center">时间</th>
        <th align="center">渠道</th>
        <th align="center">留言</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td align="center">YourBatman</td>
        <td align="center">￥ 3.33</td>
        <td align="center">2020-05-08</td>
        <td align="center">微信</td>
        <td align="center">喜欢的风格，支持一下</td>
    </tr>
    <tr>
        <td align="center">*生</td>
        <td align="center">￥ 8.88</td>
        <td align="center">2020-04-06</td>
        <td align="center">微信</td>
        <td align="center">blog很酷！谢谢！</td>
    </tr>
    <tr>
        <td align="center">小包小白</td>
        <td align="center">￥ 0.96</td>
        <td align="center">2019-10-12</td>
        <td align="center">微信</td>
        <td align="center"></td>
    </tr>
    <tr>
        <td align="center">Ricardo Li</td>
        <td align="center">￥ 6.66</td>
        <td align="center">2019-11-27</td>
        <td align="center">支付宝</td>
        <td align="center"></td>
    </tr>
    <tr>
        <td align="center">玩家</td>
        <td align="center">￥ 0.01</td>
        <td align="center">2019-11-28</td>
        <td align="center">微信</td>
        <td align="center"></td>
    </tr>
    <tr>
        <td align="center">宝贝&nbsp;<i class="fa fa-heartbeat" id="myheartbeat"></i></td>
        <td align="center">￥ 5.21</td>
        <td align="center">2020-01-06</td>
        <td align="center">支付宝</td>
        <td align="center"></td>
    </tr>
    </tbody>
</table>

<hr>

<div class="note default">
    有什么话要对我说吗？这里是你畅所欲言的地方，可以咨询，可以交流，可以感叹，可以发飙，但 <font color="yellow;">不！可！以！</font>订外卖
</div>

<style>
    .entry-content {
        margin-top: -20px;
    }

    .pop-container {
        min-height: 300px;
        padding: 2px 6px 6px;
        background-color: rgb(36, 200, 255);
        border-radius: 10px;
    }

    .botui-container {
        border-radius: 5px;
    }

    p {
        margin: 0;
    }

    button.botui-actions-buttons-button:focus {
        outline: none;
    }

    .single-reward {
        position: relative;
        width: 100%;
        margin: 30px auto;
        text-align: center;
        z-index: 999
    }

    .single-reward .reward-open {
        position: relative;
        line-height: 30px;
        width: 30px;
        height: 30px;
        font-size: 18px;
        padding: 7px;
        color: #fff;
        text-align: center;
        display: inline-block;
        border-radius: 100%;
        background: #d34836;
        cursor: pointer
    }

    .single-reward .reward-main {
        position: absolute;
        top: 45px;
        left: -156px;
        margin: 0;
        padding: 15px 0 0;
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
        cursor: auto
    }

    .single-reward .reward-row:before {
        content: "";
        width: 0;
        height: 0;
        border-left: 13px solid transparent;
        border-right: 13px solid transparent;
        border-bottom: 13px solid #f5f5f5;
        position: absolute;
        top: 2px;
        left: 0;
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

    .posts-expand .post-body ul li:before {
        display: none;
    }
</style>
