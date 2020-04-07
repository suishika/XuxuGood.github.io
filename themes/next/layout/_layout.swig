<!DOCTYPE html>

{% set html_class = 'theme-next ' + theme.scheme %}
{% if theme.motion.enable %}
  {% set html_class = html_class + ' use-motion' %}
{% endif %}

<html class="{{ html_class | lower }}" lang="{{ config.language }}">
<head>
  {% include '_partials/head.swig' %}
  <title>{% block title %}{% endblock %}</title>

  <!--<meta name="viewport" content="width=device-width, initial-scale=1.0">-->

  {% if theme.badApplePlayer.enable %}
    <!--<meta name="viewport" content="width=device-width, initial-scale=0.9, maximum-scale=0.9" />-->
  {% endif %}

  {% if theme.tagcloud.type == 'bubble' %}
      <!-- 球型气泡标签云 -->
      <script type="text/javascript" src="/js/src/bubble.js"></script>
  {% endif %}

  {% include '_third-party/analytics/index.swig' %}
</head>

<body itemscope itemtype="https://schema.org/WebPage" lang="{{ page.lang || page.language || config.language }}">

   {% if page.type === "photos" %}
   <!-- Root element of PhotoSwipe. Must have class pswp. -->
   <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
       <div class="pswp__bg"></div>
       <div class="pswp__scroll-wrap">
           <div class="pswp__container">
               <div class="pswp__item"></div>
               <div class="pswp__item"></div>
               <div class="pswp__item"></div>
           </div>
           <div class="pswp__ui pswp__ui--hidden">
               <div class="pswp__top-bar">
                   <div class="pswp__counter"></div>
                   <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>
                   <button class="pswp__button pswp__button--share" title="Share"></button>
                   <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>
                   <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>
                   <!-- Preloader demo http://codepen.io/dimsemenov/pen/yyBWoR -->
                   <!-- element will get class pswp__preloader--active when preloader is running -->
                   <div class="pswp__preloader">
                       <div class="pswp__preloader__icn">
                         <div class="pswp__preloader__cut">
                           <div class="pswp__preloader__donut"></div>
                         </div>
                       </div>
                   </div>
               </div>
               <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                   <div class="pswp__share-tooltip"></div>
               </div>
               <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
               </button>
               <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
               </button>
               <div class="pswp__caption">
                   <div class="pswp__caption__center"></div>
               </div>
           </div>
       </div>
   </div>
   {% endif %}

  {% if theme.google_ads.enable and theme.google_ads.auto_ads %}
    <!-- 谷歌amp-auto-ads https://www.google.com/adsense/new/u/0/pub-2723999557244339/myads/auto-ads/amp-->
    <amp-auto-ads type="adsense"
          data-ad-client="ca-pub-2723999557244339">
    </amp-auto-ads>
  {% endif %}

  {% set container_class = "container " %}
  {% if theme.sidebar.position %}
    {% set container_class = container_class + 'sidebar-position-' + theme.sidebar.position %}
  {% endif %}

  <div class="{{ container_class }} {% block page_class %}{% endblock %}">
    <div class="headband"></div>

    <!--fork me from github-->
    <a href="https://github.com/XuxuGood" class="github-corner" aria-label="View source on GitHub"><svg width="80" height="80" viewBox="0 0 250 250" style="fill:#64CEAA; color:#fff; position: absolute; top: 0; border: 0; right: 0; z-index: 1;" aria-hidden="true"><path d="M0,0 L115,115 L130,115 L142,142 L250,250 L250,0 Z"></path><path d="M128.3,109.0 C113.8,99.7 119.0,89.6 119.0,89.6 C122.0,82.7 120.5,78.6 120.5,78.6 C119.2,72.0 123.4,76.3 123.4,76.3 C127.3,80.9 125.5,87.3 125.5,87.3 C122.9,97.6 130.6,101.9 134.4,103.2" fill="currentColor" style="transform-origin: 130px 106px;" class="octo-arm"></path><path d="M115.0,115.0 C114.9,115.1 118.7,116.5 119.8,115.4 L133.7,101.6 C136.9,99.2 139.9,98.4 142.2,98.6 C133.8,88.0 127.5,74.4 143.8,58.0 C148.5,53.4 154.0,51.2 159.7,51.0 C160.3,49.4 163.2,43.6 171.4,40.1 C171.4,40.1 176.1,42.5 178.8,56.2 C183.1,58.6 187.2,61.8 190.9,65.4 C194.5,69.0 197.7,73.2 200.1,77.6 C213.8,80.2 216.3,84.9 216.3,84.9 C212.7,93.1 206.9,96.0 205.4,96.6 C205.1,102.4 203.0,107.8 198.3,112.5 C181.9,128.9 168.3,122.5 157.7,114.1 C157.9,116.9 156.7,120.9 152.7,124.9 L141.0,136.5 C139.8,137.7 141.6,141.9 141.8,141.8 Z" fill="currentColor" class="octo-body"></path></svg></a><style>.github-corner:hover .octo-arm{animation:octocat-wave 560ms ease-in-out}@keyframes octocat-wave{0%,100%{transform:rotate(0)}20%,60%{transform:rotate(-25deg)}40%,80%{transform:rotate(10deg)}}@media (max-width:500px){.github-corner:hover .octo-arm{animation:none}.github-corner .octo-arm{animation:octocat-wave 560ms ease-in-out}}</style>

    <header id="header" class="header" itemscope itemtype="https://schema.org/WPHeader">
      <div class="header-inner"> {%- include '_partials/header.swig' %} </div>
    </header>

    <main id="main" class="main">
      <div class="main-inner">
        <div class="content-wrap">
          <div id="content" class="content">
            {% block content %}{% endblock %}
          </div>
          {% include '_third-party/duoshuo-hot-articles.swig' %}
          {% include '_partials/comments.swig' %}
        </div>
        {% if theme.sidebar.display !== 'remove' %}
          {% block sidebar %}{% endblock %}
        {% endif %}
      </div>

      <!-- 这个是我自己写的swig，因为需要得到post的password参数，名字自己随便起。-->
      <!-- 如果博客中加入了pjax需要放在pjax的container中，每次刷新会重新加载container中的内容，也就默认重新加载我们这个简单的js了，如果没有加入pjax的话，位置就不重要了 -->
     {% include 'password.swig' %}

    </main>

    <footer id="footer" class="footer">
      <div class="footer-inner">
        {% include '_partials/footer.swig' %}
        {% include '_third-party/analytics/analytics-with-widget.swig' %}
        {% block footer %}{% endblock %}
      </div>
    </footer>

    {% if not theme.sidebar.b2t %}
      <div class="back-to-top">
        <i class="fa fa-arrow-up"></i>
        {% if theme.sidebar.scrollpercent %}
          <span id="scrollpercent"><span>0</span>%</span>
        {% endif %}
      </div>
    {% endif %}

    {% if theme.needmoreshare2.enable and theme.needmoreshare2.float.enable %}
      <div id="needsharebutton-float">
        <span class="btn">
          <i class="fa fa-share-alt" aria-hidden="true"></i>
        </span>
      </div>
    {% endif %}

  </div>

  {% include '_scripts/vendors.swig' %}
  {% include '_scripts/commons.swig' %}

  {% set scheme_script = '_scripts/schemes/' + theme.scheme | lower + '.swig' %}
  {% include scheme_script %}

  {% block script_extra %}{% endblock %}

  {% include '_scripts/boostrap.swig' %}

  {% include '_third-party/comments/index.swig' %}
  {% include '_third-party/search/index.swig' %}
  {% include '_third-party/analytics/lean-analytics.swig' %}
  {% include '_third-party/analytics/firestore.swig' %}
  {% include '_third-party/seo/baidu-push.swig' %}
  {% include '_third-party/needsharebutton.swig' %}
  {% include '_third-party/rating.swig' %}
  {% include '_third-party/mathjax.swig' %}
  {% include '_third-party/scroll-cookie.swig' %}
  {% include '_third-party/exturl.swig' %}

  <!-- Tidio 在线联系功能、鼠标点击特效、页面反馈...-->
  {% include '_custom/custom.swig' %}

  <!-- 获取浏览器类型JS -->
  <script src="/js/src/browserType.js"></script>

  <!-- 看板娘 -->
  {% if theme.live2d.enable %}
      <script async src="/live2d-widget/autoload.js"></script>
  {% endif %}

  {% if theme.aplayer.enable %}
      <!-- aplayer音频播放 -->
      <link rel="stylesheet" href="/dist/APlayer.min.css">
      <div id="aplayer"></div>
      <script type="text/javascript" src="/dist/APlayer.min.js"></script>
      <script type="text/javascript" src="/dist/music.js"></script>
  {% endif %}

  <!-- badApplePlayer -->
  {% if theme.badApplePlayer.enable %}
      <!-- Your XlchPlayerKey -->
      <script>XlchKey="{{theme.badApplePlayer.XlchKey}}";</script>
      <!-- font-awesome 4.2.0 -->
      <link href="https://lib.baomitu.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
      <!-- JQuery-mousewheel 3.1.9 -->
      <script src="https://lib.baomitu.com/jquery-mousewheel/3.1.9/jquery.mousewheel.min.js"></script>
      <!-- Scrollbar -->
      <script src="https://static.https.badapple.top/BadApplePlayer/js/scrollbar.js"></script>
      <!-- BadApplePlayer -->
      <script src="https://static.https.badapple.top/BadApplePlayer/Player.js"></script>
  {% endif %}

  <!--Jquery alert复制提示功能 -->
  <link rel="stylesheet" href="/jquery_alert/css/alert.css">
  <script type="text/javascript" src="/jquery_alert/js/alert.min.js"></script>

  <!-- 代码块复制功能 -->
  <script type="text/javascript" src="/js/src/clipboard.min.js"></script>
  <script type="text/javascript" src="/js/src/clipboard-use.js"></script>

  <!--share.js-->
  <link rel="stylesheet" href="/sharejs/css/share.min.css">
  <script src="/sharejs/js/social-share.min.js"></script>

  <!-- 模仿知乎卡片样式链接 -->
  <script type="text/javascript" src="/js/src/linkcard.js"></script>

  <!--崩溃欺骗特效-->
  <script type="text/javascript" src="/js/src/crash_cheat.js"></script>

  <!-- 雪花特效 -->
  {% if theme.snow.enable %}
      <script type="text/javascript">
        var windowWidth = $(window).width();
        var browserType = getBrowserType();
        //为了防止不影响移动端的阅读体验，特意增加了屏幕宽度的判断，请根据需要决定是否添加，或者注释掉。(问题：浏览器只能一个一个判断)
        if (browserType == "IE") {

        }else if(browserType == "Edge"){

        }else{
            if (windowWidth > 480) {
              document.write('<script type="text/javascript" src="/js/src/snow.js"><\/script>');
            }
        }
      </script>
  {% endif %}

</body>
</html>
