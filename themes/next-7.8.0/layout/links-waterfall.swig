{% block content %}
{######################}
{### LINKS BLOCK ###}
{######################}

<div id="links">
    <style>
        .skill-header{
          margin-left: -0.7%;
          margin-top: -3.5rem;
          border-bottom: none !important;
          color: #ffa500;
        }
        .sweet-header{
          margin-left: -0.7%;
          border-bottom: none !important;
          color: #ffa500;
        }
        .practical-header{
          margin-left: -0.7%;
          border-bottom: none !important;
          color: #ffa500;
        }
        .card-header-span{
          overflow: hidden;
          white-space: nowrap;
          text-overflow: ellipsis;
        }
        .links-content {
            margin-top: -2rem
        }

        .link-navigation::after {
            content: " ";
            display: block;
            clear: both
        }

        .card {
            width: 130px;
            font-size: 1rem;
            padding: 0;
            border-radius: 4px;
            transition-duration: .15s;
            margin-bottom: 1rem;
            display: block;
            float: left;
            box-shadow: 0 2px 6px 0 rgba(0, 0, 0, .12);
            background: #f5f5f5
        }

        .card {
            margin-left: 16px
        }

        @media (max-width: 567px) {
            .card {
                margin-left: 16px;
                width: calc((100% - 16px) / 2)
            }

            .card:nth-child(2n+1) {
                margin-left: 0
            }

            .card:not(:nth-child(2n+1)) {
                margin-left: 16px
            }
        }

        @media (min-width: 567px) {
            .card {
                margin-left: 16px;
                width: calc((100% - 32px) / 3)
            }

            .card:nth-child(3n+1) {
                margin-left: 0
            }

            .card:not(:nth-child(3n+1)) {
                margin-left: 16px
            }
        }

        @media (min-width: 768px) {
            .card {
                margin-left: 16px;
                width: calc((100% - 48px) / 4)
            }

            .card:nth-child(4n+1) {
                margin-left: 0
            }

            .card:not(:nth-child(4n+1)) {
                margin-left: 16px
            }
        }

        @media (min-width: 1200px) {
            .card {
                margin-left: 16px;
                width: calc((100% - 64px) / 5)
            }

            .card:nth-child(5n+1) {
                margin-left: 0
            }

            .card:not(:nth-child(5n+1)) {
                margin-left: 16px
            }
        }

        .card:hover {
            transform: scale(1.1);
            box-shadow: 0 2px 6px 0 rgba(0, 0, 0, .12), 0 0 6px 0 rgba(0, 0, 0, .04)
        }

        .card .thumb {
            cursor: url(/images/pointer.cur), auto;
            width: 100%;
            height: 0;
            border-top-left-radius: 4px;
            border-top-right-radius: 4px;
            padding-bottom: 100%;
            background-size: 100% 100% !important
        }

        .posts-expand .post-body img {
            margin: 0;
            padding: 0;
            border: 0
        }

        .card .card-header {
            display: block;
            text-align: center;
            padding: 1rem .25rem;
            font-weight: 500;
            color: #333;
            white-space: normal
        }

        .card .card-header a {
            font-style: normal;
            color: #5073b8;
            font-weight: 700;
            text-decoration: none;
            border: 0
        }

        .card .card-header a:hover {
            color: #5073b8;
            border-bottom: 1px solid #5073b8;
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
