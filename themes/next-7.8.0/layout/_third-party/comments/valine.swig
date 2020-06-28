{%- set valine_uri = theme.vendors.valine or 'https://cdn.jsdelivr.net/gh/XuxuGood/cdn/blogJs/Valine.min.js' %}

<script>
NexT.utils.loadComments(document.querySelector('#valine-comments'), () => {
  NexT.utils.getScript('{{ valine_uri }}', () => {
    var requestSetting = function (from,set) {
      var from = from
      var setting = set.split(',').filter(function(item){
      return from.indexOf(item) > -1
      });
      setting = setting.length == 0 ? from :setting;
      return setting
    }
    var guestInfo = requestSetting(['nick','mail','link'],'#{ theme.valine.guest_info }')
    var requiredFields = requestSetting(['nick','mail','link'],'#{ theme.valine.requiredFields }')
    var tagMeta = '{{theme.valine.tagMeta}}'.split(',')
    var friends = '{{theme.valine.friends}}'.split(',');
    var master = '{{theme.valine.master}}'.split(',');

    new Valine({
      el         : '#valine-comments',
      appId      : '{{ theme.valine.appid }}',
      appKey     : '{{ theme.valine.appkey }}',
      placeholder: {{ theme.valine.placeholder | json }},
      avatar     : '{{ theme.valine.avatar }}',
      meta       : guestInfo,
      pageSize   : '{{ theme.valine.pageSize }}' || 10,
      visitor    : {{ theme.valine.visitor }},
      lang       : '{{ theme.valine.language }}' || 'zh-cn',
      path       : location.pathname,
      recordIP   : {{ theme.valine.recordIP }},
      serverURLs : '{{ theme.valine.serverURLs }}',
      enableQQ   : {{ theme.valine.enableQQ }},
      emojiCDN   : '{{ theme.valine.emojiCDN }}',
      emojiMaps  : {{ theme.valine.emojiMaps }},
      requiredFields: requiredFields,
      tagMeta    : tagMeta,
      master     : master,
      friends    : friends,
      metaPlaceholder: {{ theme.valine.metaPlaceholder }}
    });
  }, window.Valine);
});
</script>
