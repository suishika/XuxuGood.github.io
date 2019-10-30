---
title: 相册系列
comments: false
date: 2019-10-29 09:57:45
type: photos
---
<link rel="stylesheet" href="./ins.css">
<link rel="stylesheet" href="./photoswipe.css">
<link rel="stylesheet" href="./default-skin/default-skin.css">
<div class="tabs">
    <input type="hidden" id="tagType" value="1"/>
    <ul class="nav-tabs">
        <li class="tab active" onclick="loadPhotos(1)"><a href="#-1">风景图片</a></li>
        <li class="tab" onclick="loadPhotos(2)"><a href="#-2">个人图片</a></li>
        <li class="tab" onclick="loadPhotos(3)"><a href="#-3">宝贝图片</a></li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane active" id="-1">
            <div class="instagram1 itemscope">
                <a href="https://hasaik.com" target="_blank" class="open-ins">图片正在加载中…</a>
            </div>
        </div>
        <div class="tab-pane" id="-2">
            <div class="instagram2 itemscope">
                <a href="https://hasaik.com" target="_blank" class="open-ins">图片正在加载中…</a>
            </div>
        </div>
        <div class="tab-pane" id="-3">
            <div class="instagram3 itemscope">
                <a href="https://hasaik.com" target="_blank" class="open-ins">图片正在加载中…</a>
            </div>
        </div>
    </div>
</div>

<script>
    (function () {
        var loadScript = function (path) {
            var $script = document.createElement('script')
            document.getElementsByTagName('body')[0].appendChild($script)
            $script.setAttribute('src', path)
        }
        setTimeout(function () {
            loadScript('./ins.js')
        }, 0)
    })()
</script>

<script>
    function loadPhotos(val) {
        $("#tagType").val(val)
        var loadScript = function (path) {
            var $script = document.createElement('script')
            document.getElementsByTagName('body')[0].appendChild($script)
            $script.setAttribute('src', path)
        }
        setTimeout(function () {
            debugger
            loadScript('./ins.js')
        }, 0)
    }
</script>
