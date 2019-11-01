---
title: Hexo+NexT 自定义样式博文加密
notshow: false
copyright: true
abbrlink: c1cdcf68
date: 2019-10-16 16:31:27
tags:
  - Hexo
  - Next
  - Password
  - Security
categories:
  - Hexo
  - Password
  - Security
top:
keywords:
  - Hexo
  - Next
  - Password
  - Security
password:
description: 介绍一种自定义博文加密方式，不需要插件，极简模式，相对安全。
---
&emsp;&emsp;介绍一种自定义博文加密方式，不需要插件，极简模式，相对安全。

&emsp;&emsp;先看一下效果：

![密码](https://s2.ax1x.com/2019/11/01/KHMRr8.png)

# *代码*

1、在目录 `/themes/next/layout/` 下的 `_layout.swig` 中，找到main标签添加自定义的 swig

```BASH
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

 <!-- 此处为新加的代码 -->
 {% include 'password.swig' %}

</main>
```

2、在目录 `/themes/next/layout/` 下创建 `password.swig`，内容如下：
