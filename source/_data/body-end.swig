{# 打字特效 #}
{% if theme.typing_effect %}
  <script src="/js/activate-power-mode.js"></script>
  <script>
    POWERMODE.colorful = {{ theme.typing_effect.colorful }};
    POWERMODE.shake = {{ theme.typing_effect.shake }};
    document.body.addEventListener('input', POWERMODE);
  </script>
{% endif %}

{# 网站标题崩溃特效 #}
{% if theme.crash_cheat.enable %}
   <script async src="/js/crash_cheat.js"></script>
{% endif %}

{# share.js分享 #}
<link rel="stylesheet" href="/js/sharejs/css/share.min.css">
<script src="/js/sharejs/js/social-share.min.js"></script>

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

{# 文章加密js #}
{%- if theme.password.enable %}
    <script type="text/javascript" src="/js/password.js"></script>
    <script type="text/javascript">
        password('{{ page.password }}');
    </script>
{%- endif %}
