{# 明月浩空播放器 #}
{% if theme.player.enable %}
   <script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
   <script id="myhk" src="https://player.lmih.cn/player/js/player.js" key="158649506326"></script>
{% endif %}

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

{# 近期文章 #}
{% if theme.recent_posts %}
    <div class="links-of-blogroll motion-element {{ "links-of-blogroll-" + theme.recent_posts_layout  }}">
      <div class="links-of-blogroll-title">
        <!-- modify icon to fire by szw -->
        <i class="fa fa-history fa-{{ theme.recent_posts_icon | lower }}" aria-hidden="true"></i>
        {{ theme.recent_posts_title }}
      </div>
      <ul class="links-of-blogroll-list">
        {% set posts = site.posts.sort('-date').toArray() %}
        {% for post in posts.slice('0', '5') %}
          <li>
            <a href="{{ url_for(post.path) }}" title="{{ post.title }}" target="_blank">{{ post.title }}</a>
          </li>
        {% endfor %}
      </ul>
    </div>
{% endif %}

{# 粒子时钟 #}
<div style="">
  <canvas id="canvas" style="width:60%;margin-top:20px">当前浏览器不支持canvas，请更换浏览器后再试</canvas>
</div>
<script src="/js/canvas-clock.js"></script>
