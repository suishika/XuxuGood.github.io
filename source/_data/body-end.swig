{# share.js分享，只有进入文章页面才加载js和css #}
{%- if url.search("/posts/") != -1 %}
<link rel="stylesheet" href="/js/sharejs/css/share.min.css">
<script src="/js/sharejs/js/social-share.min.js"></script>
{%- endif %}

{# 分类页样式js，只有进入分类页面才加载js #}
{%- if url.search("/categories/") != -1 %}
    <script type="text/javascript" src="/js/category-color.js"></script>
{%- endif %}

{# 标签页样式js,只有进入标签页面才加载js #}
{%- if url.search("/tags/") != -1 %}
    <script type="text/javascript" src="/js/tag-color.js"></script>
{%- endif %}

{# 友链样式js,只有进入友链页面才加载js #}
{%- if url.search("/links/") != -1 %}
    <script type="text/javascript" src="/js/links-color.js"></script>
{%- endif %}

{# 文章热度js，只有进入top页面才加载js #}
{%- if url.search("/top/") != -1 %}
    <script type="text/javascript" src="/js/top.js"></script>
{%- endif %}

{# 文章加密js #}
{%- if theme.password.enable %}
    <script type="text/javascript" src="/js/password.js"></script>
    <script type="text/javascript">
        password('{{ page.password }}');
    </script>
{%- endif %}

{# 关于我js，只有进入关于我页面才加载js #}
{%- if url.search("/about/") != -1 %}
    <script type="text/javascript" src="/about/renxi/jscex.min.js"></script>
    <script type="text/javascript" src="/about/renxi/jscex-parser.js"></script>
    <script type="text/javascript" src="/about/renxi/jscex-jit.js"></script>
    <script type="text/javascript" src="/about/renxi/jscex-builderbase.min.js"></script>
    <script type="text/javascript" src="/about/renxi/jscex-async.min.js"></script>
    <script type="text/javascript" src="/about/renxi/jscex-async-powerpack.min.js"></script>
    <script type="text/javascript" src="/about/renxi/functions.js" charset="utf-8"></script>
    <script type="text/javascript" src="/about/renxi/love.js" charset="utf-8"></script>
    <script type="text/javascript" src="/about/renxi/about.js"></script>
{%- endif %}

<script>
  <!--点击邮件中的链接跳转至相应评论-->
  var s = window.location.hash
  console.log(s)
  debugger
  if(window.location.hash){
      debugger
      var checkExist = setInterval(function() {
         if ($(window.location.hash).length) {
            $('html, body').animate({scrollTop: $(window.location.hash).offset().top-90}, 1000);
            clearInterval(checkExist);
         }
      }, 100);
   }
</script>
