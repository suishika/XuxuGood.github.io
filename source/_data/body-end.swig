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

{# 代码折叠 #}
<script type="text/javascript" src="/js/fold_action.js"></script>

{# 明月浩空播放器 #}
{% if theme.player.enable %}
   <script id="myhk" src="https://player.lmih.cn/player/js/player.js" key="158649506326"></script>
{% endif %}

{# share.js分享 #}
<link rel="stylesheet" href="/js/sharejs/css/share.min.css">
<script src="/js/sharejs/js/social-share.min.js"></script>

{# 打字机效果 #}
<script src="/js/typed.js"></script>
<script>
var typed = new Typed('.site-description', {
  strings: ['人生若只如初见','何事秋风悲画扇','等闲变却故人心','却道故人心易变','骊山语罢清宵半','泪雨霖铃终不怨','何如薄幸锦衣郎','比翼连枝当日愿'],
  loop: true, //开启循环
  typeSpeed: 200, //打印的速度。数值越大，速度越慢
  backSpeed: 100, //延迟时间后才后退，值越大，延迟的时间就越长
  cursorChar: '&nbsp;<i class="fa fa-heartbeat" id="myheartbeat"></i>' // 用于在在输出字符结尾闪烁的符号
});
</script>
