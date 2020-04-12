{# 鼠标点击特效 #}
{% if theme.cursor_effect == "fireworks" %}
  <script async src="/js/cursor/fireworks.js"></script>
{% elseif theme.cursor_effect == "explosion" %}
  <canvas class="fireworks" style="position: fixed;left: 0;top: 0;z-index: 1; pointer-events: none;" ></canvas>
  <script src="//cdn.bootcss.com/animejs/2.2.0/anime.min.js"></script>
  <script async src="/js/cursor/explosion.min.js"></script>
{% elseif theme.cursor_effect == "love" %}
  <script async src="/js/cursor/love.min.js"></script>
{% elseif theme.cursor_effect == "text" %}
  <script async src="/js/cursor/text.js"></script>
{% endif %}

{# 打字特效 #}
{% if theme.typing_effect %}
  <script src="/js/activate-power-mode.min.js"></script>
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

{# 类知乎卡片链接 #}
<script type="text/javascript" src="/js/linkcard.js"></script>

<!-- 明月浩空播放器 -->
{% if theme.player.enable %}
   <script src="https://player.lmih.cn/player/js/player.js" id="myhk" key="158649506326" m="1"></script>
{% endif %}

<!--share.js分享-->
<link rel="stylesheet" href="/sharejs/css/share.min.css">
<script src="/sharejs/js/social-share.min.js"></script>
