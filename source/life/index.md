---
title: 生活日常
date: 2019-10-28 11:30:03
type: life
comments: false #是否开启评论
---
<blockquote class="blockquote-center">

**_Life was like a box of chocolates, you never know what you’re going to get_**
</blockquote>

<div class="life">
    <div class="row">
        <div class="box">
            <img class="nofancybox" src="https://s2.ax1x.com/2019/10/27/Ksh4SA.gif">
            <div class="box-content"><h3 class="lay-title">订阅本站</h3><span class="lay-post">欢迎订阅和关注</span>
                <div>
                    <ul class="icon">
                        <li><a href="#" title="点我前往" target="_blank"
                               rel="noopener"><i class="fa fa-link"></i></a></li>
                    </ul>
                </div>
            </div>
        </div> 
        <div class="box"><img class="nofancybox" src="https://s2.ax1x.com/2019/10/28/K6WAp9.md.jpg">
            <div class="box-content"><h3 class="lay-title">读书系列</h3><span class="lay-post">读过的一些书籍</span>
                <div>
                    <ul class="icon">
                        <li><a href="/books/" target="" title="点我前往"><i class="fa fa-link"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="box"><img class="nofancybox" src="https://s2.ax1x.com/2019/10/28/K6WSmV.jpg">
            <div class="box-content"><h3 class="lay-title">观影系列</h3><span class="lay-post">看过的一些电影</span>
                <div>
                    <ul class="icon">
                        <li><a href="/movies/" target="" title="点我前往"><i class="fa fa-link"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="box"><img class="nofancybox" src="https://s2.ax1x.com/2019/10/28/K6WFfJ.jpg">
            <div class="box-content"><h3 class="lay-title">相册系列</h3><span class="lay-post">一些生活的色彩</span>
                <div>
                    <ul class="icon">
                        <li><a href="/photos/" target="" title="点我前往"><i class="fa fa-link"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    .box {
        overflow: hidden;
        position: relative;
        z-index: 1;
        transition: all .5s;
        width: 40%;
        float: left;
        margin: 3% 5%;
        height: 220px
    }

    .box:hover {
        box-shadow: 3px 3px 5px #999
    }

    .box:after, .box:before {
        content: "";
        background: radial-gradient(circle at 23% 70%, rgba(255, 255, 255, .8), #fff 30%);
        width: 150%;
        height: 175%;
        opacity: 0;
        transform: rotate(45deg);
        position: absolute;
        top: -10.5%;
        right: -150%;
        z-index: 1;
        transition: all .35s ease
    }

    .box:after {
        background: rgba(255, 255, 255, .5);
        width: 50%;
        height: 69%;
        right: auto;
        left: -7%;
        top: -65%
    }

    .box:hover:before {
        opacity: 1;
        right: -85%
    }

    .box:hover:after {
        opacity: 1;
        top: -42%
    }

    .box img {
        width: 100%;
        height: auto;
        transition: all .5s ease
    }

    .box:hover img {
        transform: scale(1.2)
    }

    .box .box-content {
        text-align: right;
        transform: translateY(-50%);
        position: absolute;
        top: 50%;
        right: -100%;
        z-index: 2;
        transition: all .5s
    }

    .box:hover .box-content {
        right: 5%
    }

    .box .lay-title {
        color: #1e272e;
        font-size: 23px;
        font-weight: 700;
        text-transform: uppercase;
        margin: 0 0 3px 0;
        border-bottom: 0
    }

    .box .lay-post {
        font-size: 16px;
        text-transform: capitalize;
        margin: 0 0 10px;
        display: block
    }

    .box .icon {
        padding: 0;
        margin: 0;
        list-style: none
    }

    .box .icon li {
        display: inline-block;
        margin: 0 4px
    }

    .box .icon li a {
        color: #fff;
        background-color: #1e272e;
        font-size: 18px;
        text-align: center;
        line-height: 35px;
        height: 35px;
        width: 35px;
        border-radius: 50%;
        display: block;
        transition: all .3s
    }

    .box .icon li a:hover {
        color: #1e272e;
        background-color: #fff;
        border-radius: 10%;
        border-bottom: 1px solid gray;
        box-shadow: 0 0 5px #1e272e inset
    }

    @media only screen and (max-width: 990px) {
        .box {
            margin: 0 0 30px
        }
    }

    @media only screen and (max-width: 479px) {
        .box .title {
            font-size: 20px
        }
    }

    @media (max-width: 767px) {
        .box {
            width: 90%;
            margin: 3% 5%
        }

        .box:hover:before {
            right: -105%;
            top: -19%
        }

        .box:after, .box:hover:after {
        / / opacity: 0;
            display: none
        }
    }
</style>
