{% block content %}
{######################}
{### LINKS BLOCK ###}
{######################}

<div id="links">
  <style>
    .link-navigation {
      margin-top: -2rem;
      list-style: none;
      padding: 0;
      width: 100%;
      display: inline-block;
    }

    .card {
      width: 23%;
      float: left;
      border: 1px solid #ececec;
      padding: 10px 30px;
      margin: 4px 4px;
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

    .card img {
      float: right;
      box-shadow: inset 0 0 10px #000;
      opacity: 1;
      transform: rotate(0deg);
      -webkit-transform: rotate(0deg);
      -webkit-transition: all ease 1s;
      margin-top: 10px;
      margin-bottom: 0;
      width: 65px;
      height: 65px;
      padding: 2px;
      border-radius: 100%;
    }

    .card:hover .linkdes {
      border-top: 1px dashed #fff;
    }

    .card:hover img {
      -webkit-transform: rotate(360deg);
    }

    .card:hover {
      color: #27323a;
      border: 1px solid orange;
    }

    .card:hover:before {
      width: 180%;
    }

    span.sitename {
      color: #FE9600;
      padding-bottom: 10px;
      display: block;
      -webkit-transition: all .3s;
      transition: all .3s;
      overflow: hidden;
      text-overflow: ellipsis;
      -o-text-overflow: ellipsis;
      white-space: nowrap;
    }

    .linkdes {
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
        width: 80% !important;
      }
    }
  </style>

  <div class="link-navigation" id="link-navigation">

  </div>
  {{ page.content }}
</div>
<script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
<script type="text/javascript">
  $(document).ready(function () {
    let nickname, avatar, site, info, li = "";
    $.getJSON("/links/linklist.json",
      function (data) {
        for (let i = 0; i < data.length; i++) {
          nickname = data[i].nickname;
          avatar = data[i].avatar;
          site = data[i].site;
          info = data[i].info;
          li += '<li class="card">' + '<a href="' + site + '" title="' + info + '" target="_blank">' +
            '<img src="' + avatar + '"> ' + '<span class="sitename">' + nickname + '</span>' +
            '<div class="linkdes">' + info + '</div> ' + '</a>' + '</li>'
        }
        $("#link-navigation").append(li);
      });
  });
</script>
{##########################}
{### END LINKS BLOCK ###}
{##########################}
{% endblock %}
