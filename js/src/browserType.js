// build time:Wed Apr 01 2020 08:22:32 GMT+0000 (Coordinated Universal Time)
function getBrowserType(){var r=window.navigator.userAgent;var e=r.indexOf("Opera")>-1;var i=r.indexOf("NET")>-1&&r.indexOf("rv")>-1;var f=r.indexOf("Edge")>-1;var n=r.indexOf("Firefox")>-1;var a=r.indexOf("Safari")>-1&&r.indexOf("Chrome")===-1;var d=r.indexOf("Chrome")>-1&&r.indexOf("Safari")>-1;if(i){return"IE"}if(e){return"Opera"}if(f){return"Edge"}if(n){return"FF"}if(a){return"Safari"}if(d){return"Chrome"}}
//rebuild by neat 