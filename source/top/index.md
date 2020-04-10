---
title: 文章热度排行
comments: false
date: 2019-11-03 14:37:48
type:
---

<div id="top" style="margin-top:-30px;"></div>

<script src="//cdn1.lncld.net/static/js/3.0.4/av-min.js"></script>
<!-- <script src="https://cdn1.lncld.net/static/js/av-core-mini-0.6.4.js"></script> -->
<script>AV.initialize("gYcUzERw1BSKyARbzWH2OQzu-gzGzoHsz", "7xvFncnnyG2QI60iDY3E4PuO");</script>
<script type="text/javascript">
    var time = 0
    var title = ""
    var url = ""
    var query = new AV.Query('Counter');
    query.notEqualTo('id', 0);
    query.descending('time');
    query.limit(1000);
    query.find().then(function (todo) {
        for (var i = 0; i < 1000; i++) {
            var result = todo[i].attributes;
            time = result.time;
            title = result.title;
            url = result.url;
            var content = "<p class='my-article-top'>" + "<font color='#a7a7e5'>" + "➤【热度: " + "</font>" + "<font color='#f1a8ce'>" + time + " ℃】" + "</font>" + "<a href='" + url + "'>" + title + "</a>" + "</p>";
            document.getElementById("top").innerHTML += content
        }
    }, function (error) {
        console.log("error");
    });
</script>

<style>.post-description {
        display: none;
    }
</style>
