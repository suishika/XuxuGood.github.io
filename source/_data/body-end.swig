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

{# 分类页样式js #}
<script type="text/javascript" src="/js/category-color.js"></script>

{# 标签页样式js #}
<script type="text/javascript" src="/js/tag-color.js"></script>

{# 友链样式js #}
<script type="text/javascript" src="/js/links-color.js"></script>

{# 文章热度js #}
<script type="text/javascript" src="/js/top.js"></script>

{# 关于我js #}
<script type="text/javascript" src="/about/renxi/jscex.min.js"></script>
<script type="text/javascript" src="/about/renxi/jscex-parser.js"></script>
<script type="text/javascript" src="/about/renxi/jscex-jit.js"></script>
<script type="text/javascript" src="/about/renxi/jscex-builderbase.min.js"></script>
<script type="text/javascript" src="/about/renxi/jscex-async.min.js"></script>
<script type="text/javascript" src="/about/renxi/jscex-async-powerpack.min.js"></script>
<script type="text/javascript" src="/about/renxi/functions.js" charset="utf-8"></script>
<script type="text/javascript" src="/about/renxi/love.js" charset="utf-8"></script>
<script type="text/javascript" src="/about/renxi/about.js"></script>

{# 文章加密js #}
{%- if theme.password.enable %}
    <script type="text/javascript" src="/js/password.js"></script>
    <script type="text/javascript">
        password('{{ page.password }}');
    </script>
{%- endif %}
