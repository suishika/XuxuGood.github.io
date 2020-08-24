'use strict';

// {% link title, url %}
// {% link title, url, img %}
hexo.extend.tag.register('link', function(args) {
  args = args.join(' ').split(',')
  let text = ''
  let url = ''
  let img = ''
  if (args.length > 1) {
    text = args[0].trim()
    url = args[1].trim()
  } else {
    return
  }
  let result = '';
  result += '<div><a class="link-card" title="' + text + '" href="' + url + '">';
  // left
  result += '<div class="left">';
  result += '<img src="' + (img || hexo.theme.config.tag_plugins.link.placeholder) + '"/>';
  result += '</div>';
  // right
  result += '<div class="right"><p class="text">' + text + '</p><p class="url">' + url + '</p></div>';
  result += '</a></div>';

  return result;
});
