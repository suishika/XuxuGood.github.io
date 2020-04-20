<script type="text/javascript">
  var allTags = document.getElementsByClassName('tag-cloud-tags');
  var tags = allTags[0].getElementsByTagName('a');
  for (var i = tags.length - 1; i >= 0; i--) {
    var r = Math.floor(Math.random() * 75 + 130);
    var g = Math.floor(Math.random() * 75 + 100);
    var b = Math.floor(Math.random() * 75 + 80);
    tags[i].style.background = "rgb(" + r + "," + g + "," + b + ")";
  }
</script>

<style>
  .tag-cloud-tags a {
    box-shadow: none;
    border-radius: 6px;
    padding-right: 5px;
    padding-left: 5px;
    color: #fff !important;
    margin: 10px 5px 0 0;
  }

  .tag-cloud-tags a:before {
    content: "🔖";
  }

  .tag-cloud-tags a:hover {
    color: #fff !important;
    box-shadow: 0 5px 15px 0 rgba(0, 0, 0, .4);
    transform: scale(1.1);
    transition-duration: 0.15s;
  }
</style>
