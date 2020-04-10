<script type="text/javascript">
     var allCategory = document.getElementsByClassName('category-all');
     //链接
     var categories = allCategory[0].getElementsByTagName('a');
     //数字
     var counts = allCategory[0].getElementsByTagName('span');
     for (var i = categories.length - 1; i >= 0; i--) {
       var r=Math.floor(Math.random()*75+130);
       var g=Math.floor(Math.random()*75+100);
       var b=Math.floor(Math.random()*75+80);
       //链接颜色
       categories[i].style.background = "rgb("+r+","+g+","+b+")";
        //数字颜色
       counts[i].style.color = "rgb("+r+","+g+","+b+")";
     }
</script>

<style>
.post-body a {
    font-size: 0.9em;
    color: rgb(255, 255, 255) !important;
    border-bottom: none !important;
    border-radius: 4px;
    padding: 5px 8px 5px 8px;
    margin-right: 5px;
    margin-left: 0;
    margin-top: 8px;
    margin-bottom: 0;
}

.post-body a:before {
    content: "🔖";
}
.post-body a:hover {
    font-size: 0.9em;
    margin-left:10px;
    border-bottom: none;
    background: rgba(100,154,182,.902);
    color: #fff!important;
    -webkit-box-shadow: 0 8px 16px 0 rgba(0,0,0,.2), 0 6px 20px 0 rgba(0,0,0,.19);
    -moz-box-shadow: 0 8px 16px 0 rgba(0,0,0,.2),0 6px 20px 0 rgba(0,0,0,.19);
    border-radius: 4px;
    padding: 5px 8px 5px 8px;
}

.category-all-page .category-list-count {
    font-weight: bold;
}

.posts-expand .post-body ul li {
    margin-top: 7px;
    margin-bottom: 7px;
    list-style: none;
    color: #000;
}

.posts-expand .post-body ul li:before {
    display: block;
    float: left;
    width: 12px;
    height: 12px;
    line-height: 28px;
    margin: .9rem 12px 0 0;
    color: #fff;
    font-size: 15px;
    font-weight: 700;
    font-style: normal;
    background-color: #49b1f5;
    border-radius: 50%;
    text-align: center;
    content: "";
}

@media (max-width: 767px) {
    .post-body a:hover {
        margin-left: 0px;
        font-size: 0.9em;
    }
}
</style>
