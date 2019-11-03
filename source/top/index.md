---
title: 文章热度排行
comments: false
date: 2019-11-03 14:37:48
type:
---

<div id="top" style="margin-top:80px;">

</div>

<!-- Firebase App (the core Firebase SDK) is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/5.10.1/firebase-app.js"></script>

<!-- Add Firebase products that you want to use -->
<script src="https://www.gstatic.com/firebasejs/5.10.1/firebase-auth.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.10.1/firebase-database.js"></script>

<script src="https://www.gstatic.com/firebasejs/5.10.1/firebase-firestore.js"></script>

<script>
  
  firebase.initializeApp({
      apiKey: 'AIzaSyDHD_PQ305bIqPrqf-orffWOZEeFRpGiPA', //你的apiKey
      projectId: 'xu-blog'  //你的projectId
   })
  
   var title= '';
   var count = 0;
   var url = '';
   const db = firebase.firestore();
   var collection =  'articles'; //主题配置文件配置的collection //{{ theme.firestore.collection }}';
   db.collection(collection).orderBy('count', 'desc').limit(10).get().then((querySnapshot) => {
       querySnapshot.forEach((doc) => {
       //  console.log(doc.id, " => ", doc.data());
           title = doc.id;
           count = doc.data().count;
           url = doc.data().url;
           var content="<h5><p>"+"<font color='#1C1C1C'>"+"【文章热度: "+count+" ℃】"+"</font>" + '&emsp;&emsp;' + "<span'><a href='"+url+"'>"+title+"</a></span>"+"</p></h5>";
           document.getElementById("top").innerHTML+=content
       });
   });

</script>
