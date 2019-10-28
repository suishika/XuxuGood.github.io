---
title:
date: 2019-10-10 16:43:04
type: "about"
---
<blockquote class="blockquote-center">

**_优秀的人，不是不合群，而是他们合群的人里没有你_**
</blockquote>

**About me**
   *   90后小码农
   *   Java 编程菜鸟
   *   平常喜欢旅行、健身、接触新事物、打游戏
   *   希望能赚很多钱，去干够风骚有意义的事

**Contact**

&emsp;Personal
   *   Qmail： [22476705@qq.com](mailto:22476705@qq.com)
   *   Gmail： [johnxuxuy@gmail.com](mailto:johnxuxuy@gmail.com)
   *   GitHub： [https://github.com/XuxuGood](https://github.com/XuxuGood)

**Note**
<div class="note success">
    欢迎转载，请在文章页面明显位置给出原文连接，感谢您的阅读
</div>

**Donate**
<div class="note success">
    本站所有文章均免费开放，如您喜欢，可以请我喝杯咖啡
</div>

<div class="share_reward">
    <button id="rewardButton" disable="enable" onclick="dashang()"><span id="dashang">打赏</span></button>
    <div id="QR" style="display:none">
        <div id="wechat" style="display:inline-block">
            <a href="/images/wechatpay.jpg" class="fancybox fancybox.image" rel="group">
                <img id="wechat_qr" src="/images/wechatpay.jpg">
            </a>
        </div>
        <div id="alipay" style="display:inline-block">
            <a href="/images/alipay.jpg" class="fancybox fancybox.image" rel="group">
                <img id="alipay_qr" src="/images/alipay.jpg">
            </a>
        </div>
    </div>
</div>

谢各位大佬赏~ (_^__^_) Y……

|  赞助人   | 金额  |  时间  |  渠道  |  留言  |
|  :----:   | :----:| :----: | :----: | :----: |
| 小包小白  | ￥ 0.96 |  2019-10-12  |  微信  |

* * *

> _有什么话要对我说吗？这里是你畅所欲言的地方，可以咨询，可以交流，可以感叹，可以发飙，但 <font color="yellow;">不！可！以！</font>订外卖_

<style>
    #dashang {
        animation: heartAnimate 1.33s ease-in-out infinite
    }

    #das {
        position: relative;
        width: 50px;
    / / height: 40 px;
    / / margin: 100 px;
        transition: all .3s
    }

    #das:before {
        content: '打'
    }

    #das:after {
        content: '赏'
    }

    #das:after, #das:before {
        position: absolute;
        left: 25px;
        top: 0;
        width: 25px;
        height: 40px;
        background: red;
        border-radius: 40px 40px 0 0;
        transform: rotate(-45deg);
        transform-origin: 0 100%
    }

    #das:after {
        left: 0;
        top: 0;
        transform: rotate(45deg);
        transform-origin: 100% 100%
    }
</style>
<script>
    function dashang() {
        var e = document.getElementById("QR");
        "none" == e.style.display ? e.style.display = "block" : e.style.display = "none"
    }
</script>
