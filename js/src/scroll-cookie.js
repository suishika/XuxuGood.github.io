// build time:Wed Dec 04 2019 04:10:53 GMT+0000 (Coordinated Universal Time)
$(document).ready(function(){var o=window.location.href.replace(window.location.origin,"");var i;$(window).on("scroll",function(){clearTimeout(i);i=setTimeout(function(){Cookies.set("scroll-cookie",$(window).scrollTop()+"|"+o,{expires:365,path:""})},250)});if(Cookies.get("scroll-cookie")!==undefined){var e=Cookies.get("scroll-cookie").split("|");if(e[1]==o){$(window).scrollTop(e[0])}}});
//rebuild by neat 