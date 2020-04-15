<!-- 在网页底部添加网站运行时间 -->
<span id="timeDate">载入天数...</span><span id="times">载入时分秒...</span>
<script>
    var now = new Date();
    function createtime() {
        var grt= new Date("10/09/2019 00:00:00");//此处修改你的建站时间或者网站上线时间
        now.setTime(now.getTime()+250);
        days = (now - grt ) / 1000 / 60 / 60 / 24; dnum = Math.floor(days);
        hours = (now - grt ) / 1000 / 60 / 60 - (24 * dnum); hnum = Math.floor(hours);
        if(String(hnum).length ==1 ){hnum = "0" + hnum;} minutes = (now - grt ) / 1000 /60 - (24 * 60 * dnum) - (60 * hnum);
        mnum = Math.floor(minutes); if(String(mnum).length ==1 ){mnum = "0" + mnum;}
        seconds = (now - grt ) / 1000 - (24 * 60 * 60 * dnum) - (60 * 60 * hnum) - (60 * mnum);
        snum = Math.round(seconds); if(String(snum).length ==1 ){snum = "0" + snum;}
        document.getElementById("timeDate").innerHTML = "网站已运行 "+dnum+" 天 ";
        document.getElementById("times").innerHTML = hnum + " 小时 " + mnum + " 分 " + snum + " 秒";
    }
setInterval("createtime()",250);
</script>

<!-- 在网页底部添加简体繁体一键切换 -->
<div class="translate-style">
    繁/简：<a id="translateLink" href="javascript:translatePage();">繁体</a>
</div>
<script type="text/javascript" src="/js/tw_cn.js"></script>
<script type="text/javascript">
    var defaultEncoding = 2; //网站编写字体是否繁体，1-繁体，2-简体
    var translateDelay = 0; //延迟时间,若不在前, 要设定延迟翻译时间, 如100表示100ms,默认为0
    var cookieDomain = "https://tding.top/"; //Cookie地址, 一定要设定, 通常为你的网址
    var msgToTraditionalChinese = "繁体"; //此处可以更改为你想要显示的文字
    var msgToSimplifiedChinese = "简体"; //同上，但两处均不建议更改
    var translateButtonId = "translateLink"; //默认互换id
    translateInitilization();
</script>
