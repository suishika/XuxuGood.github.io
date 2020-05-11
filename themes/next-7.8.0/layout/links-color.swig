{% block content %}
{######################}
{### LINKS BLOCK ###}
{######################}

<div id="links">
  <style>
    .skill-header{
      margin-left: 2%;
      margin-top: -3.5rem;
      border-bottom: none !important;
      color: #ffa500;
    }
    .sweet-header{
      margin-left: 2%;
      border-bottom: none !important;
      color: #ffa500;
    }
    .practical-header{
      margin-left: 2%;
      border-bottom: none !important;
      color: #ffa500;
    }
    .link-navigation {
      list-style: none;
      padding: 0;
      width: 100%;
      display: inline-block;
    }

    .card {
      width: 23%;
      float: left;
      border: 1px solid #ececec;
      padding: 1% 3%;
      margin: 0.5% 2%;
      position: relative;
      overflow: hidden;
      transition: all .3s;
      border-radius: 10px;
    }

    .card:before {
      background-color: #fff0da;
      content: "";
      transform: skew(45deg, 0);
      width: 0;
      height: 100%;
      position: absolute;
      top: 0;
      left: -60px;
      z-index: -1;
      transition: all .5s;
    }

    .thumb {
      float: right;
      box-shadow: inset 0 0 10px #000;
      opacity: 1;
      transition: all ease 1s;
      margin-top: 10px;
      margin-bottom: 0;
      width: 65px;
      height: 65px;
      padding: 2px;
      border-radius: 100%;
      background-size: 100% 100% !important;
    }

    .card:hover .linkdes {
      border-top: 1px dashed #fff;
    }

    .card:hover .thumb {
      transform: rotate(360deg);
    }

    .card:hover {
      color: #27323a;
      border: 1px solid orange;
    }

    .card:hover:before {
      width: 180%;
    }

    span.site-name {
      color: #FE9600;
      padding-bottom: 10px;
      display: block;
      transition: all .3s;
      overflow: hidden;
      text-overflow: ellipsis;
      -o-text-overflow: ellipsis;
      white-space: nowrap;
    }

    .link-info {
      color: #949494;
      font-size: 13px;
      padding: 10px 0;
      border-top: 1px dashed #ddd;
      text-overflow: ellipsis;
      overflow: hidden;
      white-space: nowrap;
      line-height: 25px;
      -webkit-transition: all .5s;
      transition: all .5s;
    }

    @media (max-width: 630px) {
      .card {
        width: 90% !important;
      }
    }
  </style>

  <!-- 技术大佬们友链 -->
  <h4 class="skill-header"><i class="fa fa-fw fa-user"></i>&nbsp;技术大佬</h4>
  <div class="link-navigation" id="link-navigation-skill"></div>

  <!-- 实用链接 -->
  <h4 class="practical-header"><i class="fa fa-fw fa-rocket"></i>&nbsp;实用链接</h4>
  <div class="link-navigation" id="link-navigation-practical"></div>

  <!-- 虐狗博主 -->
  <h4 class="sweet-header"><i class="fa fa-fw fa-heartbeat"></i>&nbsp;虐狗博主</h4>
  <div class="link-navigation" id="link-navigation-sweet"></div>

  {{ page.content }}
</div>

{##########################}
{### END LINKS BLOCK ###}
{##########################}
{% endblock %}
