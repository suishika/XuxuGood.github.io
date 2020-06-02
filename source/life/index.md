---
title: 生活日常
date: 2019-10-28 11:30:03
type: life
comments: false #是否开启评论
---
{% cq %}
**_Life was like a box of chocolates, you never know what you’re going to get_**
{% endcq %}

<div class="life">
    <div class="row">
        <div class="box">
            <div class="thumb" style="background-image: url('https://s2.ax1x.com/2019/10/30/K4ViZT.jpg')"></div>
            <div class="portfolio-caption">
                <div class="vertical-table">
                    <div class="vertical-cell">
                        <h2>游戏系列</h2>
                        <p>玩过的一些游戏</p>
                        <a href="/games/" class="btn">View More</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="thumb" style="background-image: url('https://s2.ax1x.com/2019/10/28/K6WAp9.md.jpg')"></div>
            <div class="portfolio-caption">
                <div class="vertical-table">
                    <div class="vertical-cell">
                        <h2>读书系列</h2>
                        <p>读过的一些书籍</p>
                        <a href="/books/" class="btn">View More</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="thumb" style="background-image: url('https://s2.ax1x.com/2019/10/28/K6WSmV.jpg')"></div>
            <div class="portfolio-caption">
                <div class="vertical-table">
                    <div class="vertical-cell">
                        <h2>观影系列</h2>
                        <p>看过的一些电影</p>
                        <a href="/movies/" class="btn">View More</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="thumb" style="background-image: url('https://s2.ax1x.com/2019/10/28/K6WFfJ.jpg')"></div>
            <div class="portfolio-caption">
                <div class="vertical-table">
                    <div class="vertical-cell">
                        <h2>相册系列</h2>
                        <p>生活的五彩斑斓</p>
                        <a href="/gallery/" class="btn">View More</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="thumb" style="background-image: url('https://cdn.jsdelivr.net/gh/XuxuGood/blogImages/resume/resumeBg.jpg')"></div>
            <div class="portfolio-caption">
                <div class="vertical-table">
                    <div class="vertical-cell">
                        <h2>我的简历</h2>
                        <p>冰冻三尺非一日之寒</p>
                        <a href="/resume/" class="btn">View More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    .posts-expand .post-body h3:before {
        content: "";
    }

    .row {
        display: flow-root;
    }

    .box {
        overflow: hidden;
        position: relative;
        z-index: 1;
        transition: all .5s;
        width: 40%;
        float: left;
        margin: 3% 5%;
        height: 180px;
        border-radius: 10px;
    }

    .box:hover {
        box-shadow: 3px 3px 5px #999
    }

    .thumb {
        background-size: 100% 100%;
        height: 100%;
        transition: all .5s ease
    }

    .box:hover .thumb {
        transform: scale(1.2)
    }

    .box:hover .portfolio-caption {
        opacity: 1;
        visibility: visible;
    }

    .portfolio-caption {
        position: absolute;
        z-index: 2;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        opacity: 0;
        visibility: hidden;
        text-align: center;
        background: rgba(42, 42, 42, 0.9);
        transition: all 0.3s ease-in-out;
    }

    .vertical-table {
        width: 100%;
        height: 100%;
        display: table;
    }

    .portfolio-caption .vertical-cell {
        padding: 10px;
    }

    .vertical-cell {
        display: table-cell;
        vertical-align: middle;
    }

    .portfolio-caption h2 {
        font-size: 1.318em;
        color: #fff;
        margin-top: 0;
        -webkit-transform: translateY(-10px);
        -ms-transform: translateY(-10px);
        transform: translateY(-10px);
        transition: all 0.4s ease-in-out;
    }

    .portfolio-caption p {
        font-size: 0.8em;
        color: #e1e1e1;
    }

    .portfolio-caption .btn {
        color: #010101;
        background-color: #fff;
        margin-top: -0.1rem;
        font-size: 14px;
        font-weight: 700;
        line-height: 1.2;
        letter-spacing: 0.05em;
        text-decoration: none;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
        padding: 8px 15px;
        border-radius: 35px;
        border: 0;
        -webkit-appearance: none;
        box-shadow: transparent 0 0 0;
        transition: all 500ms cubic-bezier(0.23, 1, 0.32, 1) 0ms;
    }

    .portfolio-caption .btn:hover {
        color: #fff;
        background-color: #70b7fd;
    }

    @media only screen and (max-width: 479px) {
        .box {
            font-size: 20px
        }
    }

    @media (max-width: 767px) {
        .box {
            width: 90%;
            margin: 3% 5%
        }
    }
</style>
