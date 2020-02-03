// build time:Mon Feb 03 2020 10:13:16 GMT+0000 (Coordinated Universal Time)
window.tagcloud=function(e,t){function s(e){return Object.prototype.toString.call(e)==="[object Object]"}function i(t){var s=this;s.config=i._getConfig(t);s.box=s.config.element;s.fontsize=s.config.fontsize;s.radius=s.config.radius;s.depth=2*s.radius;s.size=2*s.radius;s.mspeed=i._getMsSpeed(s.config.mspeed);s.ispeed=i._getIsSpeed(s.config.ispeed);s.items=s._getItems();s.direction=s.config.direction;s.keep=s.config.keep;s.active=false;s.lasta=1;s.lastb=1;s.mouseX0=s.ispeed*Math.sin(s.direction*Math.PI/180);s.mouseY0=-s.ispeed*Math.cos(s.direction*Math.PI/180);s.mouseX=s.mouseX0;s.mouseY=s.mouseY0;s.index=-1;i._on(s.box,"mouseover",function(){s.active=true});i._on(s.box,"mouseout",function(){s.active=false});i._on(s.keep?e:s.box,"mousemove",function(t){var i=e.event||t;var n=s.box.getBoundingClientRect();s.mouseX=(i.clientX-(n.left+s.box.offsetWidth/2))/5;s.mouseY=(i.clientY-(n.top+s.box.offsetHeight/2))/5});for(var n=0,o=s.items.length;n<o;n++){s.items[n].element.index=n;s.items[n].element.onmouseover=function(){s.index=this.index};s.items[n].element.onmouseout=function(){s.index=-1}}i.boxs.push(s.box);s.update(s);s.box.style.visibility="visible";s.box.style.position="relative";s.box.style.minHeight=0*s.size+"px";s.box.style.minWidth=0*s.size+"px";for(var n=0,o=s.items.length;n<o;n++){s.items[n].element.style.position="absolute";s.items[n].element.style.zIndex=n+1}s.up=setInterval(function(){s.update(s)},10)}i.boxs=[];i._set=function(e){if(i.boxs.indexOf(e)==-1){return true}};if(!Array.prototype.indexOf){Array.prototype.indexOf=function(e){var t=this.length>>>0;var s=Number(arguments[1])||0;s=s<0?Math.ceil(s):Math.floor(s);if(s<0)s+=t;for(;s<t;s++){if(s in this&&this[s]===e)return s}return-1}}i._getConfig=function(e){var t={fontsize:16,radius:60,mspeed:"normal",ispeed:"normal",direction:135,keep:true};if(s(e)){for(var i in e){if(e.hasOwnProperty(i)){t[i]=e[i]}}}return t};i._getMsSpeed=function(e){var t={slow:1.5,normal:3,fast:5};return t[e]||3};i._getIsSpeed=function(e){var t={slow:10,normal:25,fast:50};return t[e]||25};i._getSc=function(e,t){var s=Math.PI/180;return[Math.sin(e*s),Math.cos(e*s),Math.sin(t*s),Math.cos(t*s)]};i._on=function(e,t,s,i){if(e.addEventListener){e.addEventListener(t,s,i)}else if(e.attachEvent){e.attachEvent("on"+t,s)}else{e["on"+t]=s}};i.prototype={constructor:i,update:function(){var e=this,t,s;if(!e.active&&!e.keep){e.mouseX=Math.abs(e.mouseX-e.mouseX0)<1?e.mouseX0:(e.mouseX+e.mouseX0)/2;e.mouseY=Math.abs(e.mouseY-e.mouseY0)<1?e.mouseY0:(e.mouseY+e.mouseY0)/2}t=-(Math.min(Math.max(-e.mouseY,-e.size),e.size)/e.radius)*e.mspeed;s=Math.min(Math.max(-e.mouseX,-e.size),e.size)/e.radius*e.mspeed;if(Math.abs(t)<=.01&&Math.abs(s)<=.01){return}e.lasta=t;e.lastb=s;var n=i._getSc(t,s);for(var o=0,a=e.items.length;o<a;o++){var r=e.items[o].x,l=e.items[o].y*n[1]+e.items[o].z*-n[0],m=e.items[o].y*n[0]+e.items[o].z*n[1];var u=r*n[3]+m*n[2],f=l,h=m*n[3]-r*n[2];if(e.index==o){e.items[o].scale=1;e.items[o].fontsize=16;e.items[o].alpha=1;e.items[o].element.style.zIndex=99}else{var c=e.depth/(e.depth+h);e.items[o].x=u;e.items[o].y=f;e.items[o].z=h;e.items[o].scale=c;e.items[o].fontsize=Math.ceil(c*2)+e.fontsize-6;e.items[o].alpha=1.5*c-.5;e.items[o].element.style.zIndex=Math.ceil(c*10-5)}e.items[o].element.style.left=e.items[o].x+(e.box.offsetWidth-e.items[o].offsetWidth)/2+"px";e.items[o].element.style.top=e.items[o].y+(e.box.offsetHeight-e.items[o].offsetHeight)/2+"px";e.items[o].element.style.filter="alpha(opacity="+100*e.items[o].alpha+")";e.items[o].element.style.opacity=e.items[o].alpha}},_getItems:function(){var e=this,t=[],s=e.box.children,i=s.length,n;for(var o=0;o<i;o++){n={};n.angle={};n.angle.phi=Math.acos(-1+(2*o+1)/i);n.angle.theta=Math.sqrt((i+1)*Math.PI)*n.angle.phi;n.element=s[o];n.offsetWidth=n.element.offsetWidth;n.offsetHeight=n.element.offsetHeight;n.x=e.radius*1.5*Math.cos(n.angle.theta)*Math.sin(n.angle.phi);n.y=e.radius*1.5*Math.sin(n.angle.theta)*Math.sin(n.angle.phi);n.z=e.radius*1.5*Math.cos(n.angle.phi);n.element.style.left=n.x+(e.box.offsetWidth-n.offsetWidth)/2+"px";n.element.style.top=n.y+(e.box.offsetHeight-n.offsetHeight)/2+"px";t.push(n)}return t}};if(!t.querySelectorAll){t.querySelectorAll=function(e){var s=t.createElement("style"),i=[],n;t.documentElement.firstChild.appendChild(s);t._qsa=[];s.styleSheet.cssText=e+"{x-qsa:expression(document._qsa && document._qsa.push(this))}";window.scrollBy(0,0);s.parentNode.removeChild(s);while(t._qsa.length){n=t._qsa.shift();n.style.removeAttribute("x-qsa");i.push(n)}t._qsa=null;return i}}return function(e){e=e||{};var s=e.selector||".tagcloud",n=t.querySelectorAll(s),o=[];for(var a=0,r=n.length;a<r;a++){e.element=n[a];if(!!i._set(e.element)){o.push(new i(e))}}return o}}(window,document);
//rebuild by neat 