/**
 * 自动引入模板，在原有 sw-precache 插件默认模板基础上做的二次开发
 *
 * 因为是自定导入的模板，项目一旦生成，不支持随 sw-precache 的版本自动升级。
 * 可以到 Lavas 官网下载 basic 模板内获取最新模板进行替换
 *
 */

/* eslint-disable */

'use strict';

var precacheConfig = [["/404.html","4d3d55bdffb98c981bdb9460befb096b"],["/about/index.html","5f7f7ddd628a65329869e044bb1b7c61"],["/archives/2019/10/index.html","cca3b40c6b2fd5a89155957276de4408"],["/archives/2019/11/index.html","3f0be94d708d84855973f1f5a2e5ea98"],["/archives/2019/index.html","1724131431bd1a0b9955b839e9dd794c"],["/archives/2019/page/2/index.html","7491762d5eba09c1f16d71f0004b9742"],["/archives/index.html","0b141893fc3f5dbdf5d7c1aabe1f5b0b"],["/archives/page/2/index.html","fc78305549952767473046d843d4d65c"],["/assets/douban-loading.gif","b86c6b435fc25c1366acaafc3fb5c252"],["/books/index.html","e4a7f84e7ac5056ee92a9a234685a6d8"],["/categories/Hexo/index.html","f712dee74cbbca9c38fcee00b2431cb7"],["/categories/Hexo/page/2/index.html","09ec30e4d78d42cb221e5739ed5b8182"],["/categories/Hexo/点击特效/index.html","bed1371667b7dc340240e071363e870c"],["/categories/Hexo/豆瓣/index.html","923de2d8840fc59362560d06dcb9db46"],["/categories/Java/Base64/index.html","c8e22f48fcc2b50d4e585b8191e22a97"],["/categories/Java/MD5/index.html","f16ccfc4c4b346e7825d526a9c14c5c9"],["/categories/Java/index.html","619c0091a018721fdb947b3db57dcb21"],["/categories/Valine/index.html","c8884e144ddfe9ab30d55993a69cca5f"],["/categories/index.html","9033b2eeb8cea3ef8da8db719b0a627c"],["/crypto-js.js","aa94a3285d72d7309d0df04ad8681eea"],["/css/main.css","21453f854fe8fc0f139a1126e244470c"],["/dist/APlayer.min.css","31cd767f3938bcc69faf252ae100ced3"],["/dist/APlayer.min.js","8f1017e7a73737e631ff95fa51e4e7d7"],["/dist/music.js","55eb8b6c9b7be6a1e4693048feac8a61"],["/games/index.html","2019287bf4cd3ed95825511852f00a33"],["/images/1.png","d300759956d731e90e04f959e288e60c"],["/images/about-me.png","84e25b860b15b4e6445dd084dd66b0fd"],["/images/algolia_logo.svg","fd40b88ac5370a5353a50b8175c1f367"],["/images/alipay.jpg","8a481b5ac284e0317430aac00fa93bf2"],["/images/apple-touch-icon-next.png","fce961f0bd3cd769bf9c605ae6749bc0"],["/images/avatar.gif","2bed513bc5f13733cf9a8a12c4e1a971"],["/images/avatar.jpg","b9c876d71eafacbcf4c4fea10b40b9a2"],["/images/avatar1.jpg","a33bde6a14be53af32b287d20ae08d1a"],["/images/background.jpg","f19436a8c6e3952e4817a5f0bba895da"],["/images/cc-by-nc-nd.svg","1c681acc4a150e7236254c464bb5a797"],["/images/cc-by-nc-sa.svg","12b4b29e8453be5b7828b524d3feabce"],["/images/cc-by-nc.svg","dd9cfe99ed839a4a548114f988d653f4"],["/images/cc-by-nd.svg","2d80546af20128215dc1e23ef42d06c2"],["/images/cc-by-sa.svg","c696b3db81cbbfba32f66c1dc88b909a"],["/images/cc-by.svg","6c4f8422b3725cb9f26b6c00e95fc88b"],["/images/cc-zero.svg","79deee77a07fcb79ff680ac0125eacb9"],["/images/failure.png","fe64479e9b528e19967df833f70ab2bb"],["/images/failure1.png","abf24d8d9aca53c731cf65313e31c66d"],["/images/favicon-16x16-next.png","b8975923a585dbaa8519a6068e364947"],["/images/favicon-32x32-next.png","5a029563fe3214c96f68b46556670ea1"],["/images/favicon.png","fe64479e9b528e19967df833f70ab2bb"],["/images/favicon1.png","abf24d8d9aca53c731cf65313e31c66d"],["/images/favicon2.png","51a0c1d78f151f21dc801e1801f4e634"],["/images/hot.png","8ca1fafa6d0efddcac6eee69f823782b"],["/images/icon-slides.png","5efa36b1d0ef0b5fbb33813582d3b405"],["/images/linkcard.png","e89a5f2703bf064fb45e0fabe3bc0742"],["/images/linkcard_bak.png","07b964e8f40192f2d2deba5eb2debeb3"],["/images/loading.gif","c2196de8ba412c60c22ab491af7b1409"],["/images/loading2.gif","bf7144d1a40a6b6325fd8e28c635ba5e"],["/images/loading3.gif","9c600b5240b32b012956f55a42cdcaf5"],["/images/loading4.gif","7021bb23b8740efadb3c6a1620d12df0"],["/images/logo.svg","ddad9027e42111ccd5b466bc18188970"],["/images/placeholder.gif","c2196de8ba412c60c22ab491af7b1409"],["/images/quote-l.svg","1238a4baccd02c6025ec85b58f4282d4"],["/images/quote-r.svg","85787c6fa27965c81f7be70252b43bed"],["/images/read.png","31dfac462044cd4675f744ff5a940c5e"],["/images/rocket.png","bccdd1a3718ff55c4bac6c7c11e436ee"],["/images/scroll.png","b0605bbb765779aa0d422643acfdc3bf"],["/images/searchicon.png","3d6b5c9d6d6c26a2b76a14b8fdf3438a"],["/images/subscribe.png","d4accaba47d6e791ce0cd6365735992f"],["/images/time.png","7412c44c18963032d2d121ce0cb8809f"],["/images/wechatpay.jpg","5a41b036b8fc13813f2e774eefda3930"],["/images/xiaohutong.png","4480114c06d7e3e48727e397f97f9ad2"],["/images/搞怪.png","53848cbfd48d42e0943d671aab91cc7a"],["/index.html","33df17d2deba0abb739094a1183b8596"],["/js/cursor/explosion.min.js","f8599b24e09ee8be2d30560755e38236"],["/js/cursor/fireworks.js","d41d8cd98f00b204e9800998ecf8427e"],["/js/cursor/love.min.js","7bcfdb57debd43483174cf9e15ab37cc"],["/js/cursor/text.js","0aabe55da4b6bd6d96bd94493ac21f6d"],["/js/src/Valine.min.js","637c387ebdbb3bd638b5540155d0ef00"],["/js/src/activate-power-mode.min.js","b1e237aef80ed7a74f443be0d5dbb6e0"],["/js/src/affix.js","f21101ac5b448de0521e160d213c397c"],["/js/src/algolia-search.js","adf4494c53b574e42826f54bc39bee64"],["/js/src/bootstrap.js","2b6ff9c14e1d73413805bc2112a66afc"],["/js/src/bubble.js","63927ab1127a3462f765f8697d47c72e"],["/js/src/canvas-dance-time.js","68d8338dbb9813ea81dafd053b7fe522"],["/js/src/clipboard-use.js","d2fc1219cebfa943c400d14b970d35e0"],["/js/src/clipboard.min.js","f06c52bfddb458ad87349acf9fac06c5"],["/js/src/crash_cheat.js","a8a06d39cc4cbaaf969fec02b3621bd4"],["/js/src/exturl.js","359fcb11d0714036c7517547ab88ccc4"],["/js/src/hook-duoshuo.js","8507ae8c0763434c4f51beb9c98fb798"],["/js/src/js.cookie.js","e107831066a9b3034d74e1b33d63ec8d"],["/js/src/linkcard.js","f58fef016092feeaa018418a2976b2b7"],["/js/src/motion.js","72841deb7bc0eb999f69e8495a07cf61"],["/js/src/photoswipe-ui-default.min.js","7b48965113d21a98c97d65c0fbb11667"],["/js/src/photoswipe.min.js","cdae9fc321a7fbbbe2d022c444c1c713"],["/js/src/post-details.js","f48ee9d5f913f0a53f97350f977c958f"],["/js/src/schemes/pisces.js","d3485239b41e7e12c367dc1e9805c638"],["/js/src/scroll-cookie.js","c78a2a2ac11359c8a7e71a384129e2d9"],["/js/src/scrollspy.js","647707fc988279f6ce437b6d304a7b5b"],["/js/src/snow.js","6e29392611891258ef49d50d526bb9f1"],["/js/src/utils.js","6ef591083f98a46d4de4366d99bb8f0a"],["/lib/Han/dist/font/han-space.woff","b09f2dd7d3ad8ad07f3b8495133909d9"],["/lib/Han/dist/font/han.woff","e841c6b547bc06a06f60f4de52bf906e"],["/lib/Han/dist/han.css","a853a0b58d3171f7b7a6b746f465ed4b"],["/lib/Han/dist/han.js","b09c4e9e15e954f3c3d9c8c894a3173d"],["/lib/Han/dist/han.min.css","cab466d758269b437167422c4a16b364"],["/lib/Han/dist/han.min.js","96482c9c2b3c5ea9bf5a40db162c7f34"],["/lib/algolia-instant-search/instantsearch.min.css","029a13b44e6807955106ff3c075a02f9"],["/lib/algolia-instant-search/instantsearch.min.js","0db46eba0c8133693ee839507b1612f2"],["/lib/canvas-nest/canvas-nest.min.js","36e103d2a05bc706bac40f9ab8881eb7"],["/lib/canvas-ribbon/canvas-ribbon.js","4e0bf67b298742475243a9b4ea2e745f"],["/lib/fancybox/source/blank.gif","325472601571f31e1bf00674c368d335"],["/lib/fancybox/source/fancybox_loading.gif","328cc0f6c78211485058d460e80f4fa8"],["/lib/fancybox/source/fancybox_loading@2x.gif","f92938639fa894a0e8ded1c3368abe98"],["/lib/fancybox/source/fancybox_overlay.png","77aeaa52715b898b73c74d68c630330e"],["/lib/fancybox/source/fancybox_sprite.png","783d4031fe50c3d83c960911e1fbc705"],["/lib/fancybox/source/fancybox_sprite@2x.png","ed9970ce22242421e66ff150aa97fe5f"],["/lib/fancybox/source/helpers/fancybox_buttons.png","b448080f8615e664b7788c7003803b59"],["/lib/fancybox/source/helpers/jquery.fancybox-buttons.css","f98d4a6d81c83da115a38763f1c8e9b0"],["/lib/fancybox/source/helpers/jquery.fancybox-buttons.js","63ac8b7fae3e2ffc85171a2299d13ec8"],["/lib/fancybox/source/helpers/jquery.fancybox-media.js","897ecc6e382839f553f252d4eca6afff"],["/lib/fancybox/source/helpers/jquery.fancybox-thumbs.css","6027545ac88b3219db723ebd51895c31"],["/lib/fancybox/source/helpers/jquery.fancybox-thumbs.js","da52f2793aa8b3f1da4a6f789aec5eab"],["/lib/fancybox/source/jquery.fancybox.css","e1123f5c4432bd3895e47f3bfbb92a39"],["/lib/fancybox/source/jquery.fancybox.js","5058d199ff74e140866e2d26191dbbe1"],["/lib/fancybox/source/jquery.fancybox.pack.js","cc9e759f24ba773aeef8a131889d3728"],["/lib/fastclick/README.html","6485fb45016c65b6b1d2ef79f7319e86"],["/lib/fastclick/lib/fastclick.js","f12978c9df4e2fd8ec4fb31b16e0ac47"],["/lib/fastclick/lib/fastclick.min.js","a0fc6c24d1f3ff9ac281887c92b24acd"],["/lib/font-awesome/css/font-awesome.css","6e99900cb7fd3a3b6563d0fe28931490"],["/lib/font-awesome/css/font-awesome.min.css","269550530cc127b6aa5a35925a7de6ce"],["/lib/font-awesome/fonts/fontawesome-webfont.eot","674f50d287a8c48dc19ba404d20fe713"],["/lib/font-awesome/fonts/fontawesome-webfont.svg","a313974dadc01632f2320467e1ba5fc5"],["/lib/font-awesome/fonts/fontawesome-webfont.ttf","b06871f281fee6b241d60582ae9369b9"],["/lib/font-awesome/fonts/fontawesome-webfont.woff","fee66e712a8a08eef5805a46892932ad"],["/lib/jquery/index.js","32015dd42e9582a80a84736f5d9a44d7"],["/lib/jquery_lazyload/CONTRIBUTING.html","ee99fc97a16f4c83acdccc98f5ad1f92"],["/lib/jquery_lazyload/README.html","6a5ac41383f6b4d6d770c329aba419f5"],["/lib/jquery_lazyload/jquery.lazyload.js","96ea391b715caef3f12b3a2accb14fe0"],["/lib/jquery_lazyload/jquery.scrollstop.js","528a370cb3306ca6702c0c9186ca328b"],["/lib/needsharebutton/font-embedded.css","3a98f3b50f9fcae1bcec08f1ad76b2fe"],["/lib/needsharebutton/needsharebutton.css","d41d8cd98f00b204e9800998ecf8427e"],["/lib/needsharebutton/needsharebutton.js","f5dd18681fcf68c7cc0162197e3203c5"],["/lib/pace/pace-theme-barber-shop.min.css","e8dc66cf2d88abc25fbc89b8a0529abb"],["/lib/pace/pace-theme-big-counter.min.css","db2b8fe31e60f19021545277d2f6e05e"],["/lib/pace/pace-theme-bounce.min.css","ad954aa0bace4b213eeb19d6e89a0bda"],["/lib/pace/pace-theme-center-atom.min.css","8f6bc803acefc6f93afc98fb38201456"],["/lib/pace/pace-theme-center-circle.min.css","93c72298781226a80a9c66b27b21a57d"],["/lib/pace/pace-theme-center-radar.min.css","f0099bdd1cd42e9476bd7abc417c0328"],["/lib/pace/pace-theme-center-simple.min.css","eddff4756dbf21dbbff1c543bd894dde"],["/lib/pace/pace-theme-corner-indicator.min.css","776826157cb28ac1ee5e78771292b9ba"],["/lib/pace/pace-theme-fill-left.min.css","965859b39001da08e1e92327fe3d8e12"],["/lib/pace/pace-theme-flash.min.css","aab39b436e1fa0fdc51df06f2d53c38a"],["/lib/pace/pace-theme-loading-bar.min.css","4e05877f1f9efb9c1e7dd75cb78c764f"],["/lib/pace/pace-theme-mac-osx.min.css","29ae030ceaa8158352c5472218375b91"],["/lib/pace/pace-theme-minimal.min.css","f48f04d370993b55a2745e548cc82743"],["/lib/pace/pace.min.js","24d2d5e3e331c4efa3cda1e1851b31a7"],["/lib/three/canvas_lines.min.js","1324174ae6190fbf63b7bf0ad0a8a5bd"],["/lib/three/canvas_sphere.min.js","5c6bc45b137448b5b9df152ccfb2659c"],["/lib/three/three-waves.min.js","41059bd5e5c7aa520b1b411919e5121f"],["/lib/three/three.min.js","3298078bce82bdb1afadf5b1a280915e"],["/lib/ua-parser-js/dist/ua-parser.min.js","a6e833266c4b41fabb9ba94a145322d8"],["/lib/ua-parser-js/dist/ua-parser.pack.js","73a4b91f763d10af890c8b1b26729d37"],["/lib/velocity/velocity.js","96d0707bdb35441eb557c77e231e297b"],["/lib/velocity/velocity.min.js","c1b8d079c7049879838d78e0b389965e"],["/lib/velocity/velocity.ui.js","9504459443ee8585bb644ba8313f0780"],["/lib/velocity/velocity.ui.min.js","444faf512fb24d50a5dec747cbbe39bd"],["/life/index.html","6b34389b8d03b7de9a735fc64a4c841b"],["/links/index.html","458fc1c159bb4e9fd03611546b93233b"],["/live2d-widget/README.html","555e850a1c271cc6d472ba59cf8e026c"],["/live2d-widget/assets/screenshot-1.png","30b70e6cd9be9812adcb347536f0da85"],["/live2d-widget/assets/screenshot-2.png","cca95d7c3ce89495691acc300f63aef0"],["/live2d-widget/assets/screenshot-3.png","637681525dd86db9d1ed20e397498c30"],["/live2d-widget/autoload.js","2e44cdd10c5328a0c3542d6835cc7684"],["/live2d-widget/demo/demo1.html","fcae87850ba4c828a292dc5ffb2e004f"],["/live2d-widget/demo/demo2.html","4477bd35de78b938c38f7dcd72eff968"],["/live2d-widget/live2d.min.js","c1c28f553095fdddb4d2c13a11bd4cb9"],["/live2d-widget/waifu-tips.js","d41d8cd98f00b204e9800998ecf8427e"],["/live2d-widget/waifu.css","744b1d4c27e45a50202d9b67168c4528"],["/live2dw/assets/moc/wanko.1024/texture_00.png","10b7047251205db46fdac7632b5d4642"],["/live2dw/lib/L2Dwidget.0.min.js","32973883fcac0a9ae6cc79c0ea25fda2"],["/live2dw/lib/L2Dwidget.min.js","094cbace49a39548bed64abff5988b05"],["/mcommon.js","640fdfefdd4292415f6cd6e5e24eba9c"],["/movies/index.html","b2c96680fb28bddaebbda861e4485645"],["/page/2/index.html","6a906ead28d6315dcf2b420364e0fa1c"],["/photos/default-skin/default-skin.css","59605f882c23f2bf2777824e733d21f2"],["/photos/default-skin/default-skin.png","e3f799c6dec9af194c86decdf7392405"],["/photos/default-skin/default-skin.svg","b257fa9c5ac8c515ac4d77a667ce2943"],["/photos/default-skin/preloader.gif","e34aafbb485a96eaf2a789b2bf3af6fe"],["/photos/index.html","65a58f8a66779d57fb081d9d595833dc"],["/photos/ins.css","ab347f132f9c598c8e8e9c7a73912dfe"],["/photos/ins.js","7de63ee4ae9d11e7983caf649a08c015"],["/photos/photoswipe.css","f326791082fa99d8ea53d30065c20c66"],["/posts/27514.html","f53b54fffcc3e07fbe5cb7c9997e2af5"],["/posts/39d47c89.html","d79c213898ec692afb46c70c64e470ca"],["/posts/3e5a3bb6.html","a236ca33a99130477ccc7a2ee4630805"],["/posts/495d0b23.html","6a35e4a11f41be825041d9a65b4239aa"],["/posts/61913369.html","c92c42fcb4215e25d35467d7c8ab55cd"],["/posts/7fbe9500.html","bfe42b0a25bd95add8b1dcc62c267e5c"],["/posts/89ea6c8b.html","02ee2758508ba3c26d62d36f6718ca6a"],["/posts/9c9b482b.html","22849d2a610e12bf31839724aad52e90"],["/posts/a7df3b40.html","d3846c3e76ead4bd9c5340cc8c17e615"],["/posts/ab21860c.html","4b43ea16ddd9c2c3b73ad8c6a986f7b4"],["/posts/bf9eba42.html","6bd6377041e4f6ab831b2adb61e014cd"],["/posts/c1cdcf68.html","74045864e299c990befee8e8c2e1fadd"],["/posts/c4782247.html","306d9402c20332cbea5bd7728b5f0049"],["/posts/c7631ec1.html","728a09883207b7a62cd6f63f18674a84"],["/posts/d7399e80.html","5b07b496f800a9145caf550587f9d696"],["/posts/dff7e11c.html","2a8fe47923f9d82269514d21a86f0d4c"],["/posts/e1b9c6c5.html","1db966c949335bac634a2afd0f8f8c51"],["/posts/f68f129b.html","7452ac937d4d8fc8f0aea25f014a787d"],["/sharejs/css/share.min.css","5302d280328f45bd351132938cfeb4c3"],["/sharejs/fonts/iconfont.eot","e83ffaa95463f987abe5db5bbbe303cc"],["/sharejs/fonts/iconfont.svg","eb5d36236b96681900e300ab19c620b6"],["/sharejs/fonts/iconfont.ttf","9ac2cc5ae8616eb50c033525dc14a5eb"],["/sharejs/fonts/iconfont.woff","bf0fc2ec6e2a614635e0ab6e81d059ef"],["/sharejs/js/jquery.share.min.js","1c3bf7d587a82e2611c01a5b284aa756"],["/sharejs/js/social-share.min.js","a11590a40662aa0470da0a9cf725e0be"],["/sw-register.js","2b93c62f79656fbfc3ee674bd4df7f3f"],["/tags/Base64/index.html","0acdeba1bf5e0d841e7caf4f9529919b"],["/tags/Coding/index.html","d91e7afe1d0194a85526c9c86700f64c"],["/tags/Github/index.html","39485d21b1a2b1194956c8ceb7471c8d"],["/tags/Gulp/index.html","92a84d7d51c7a87f45135e9f6e6d569e"],["/tags/Hexo/index.html","37feca9781432aa7424e1d15485a1e1f"],["/tags/Hexo/page/2/index.html","43f18f6bec89317a369eb22af9d777c0"],["/tags/Java/index.html","8e2d3fc12a0cf3380dc40043639fd0a8"],["/tags/MD5/index.html","0db2aaa37e414337326efcb9c36e3348"],["/tags/Neat/index.html","ef1890b77f8c310491a8274938ea7ab5"],["/tags/Next/index.html","5b6ddf20f450739f8b11cd46e1682a7f"],["/tags/Password/index.html","efc975a0280d83a83319eefc348378d0"],["/tags/Photos/index.html","dd710fbf85a1e7fd64cfe57b6b39068a"],["/tags/SHA-1/index.html","1e5129ed02b0c9921b58b48aaabeeb7f"],["/tags/Security/index.html","018f0b2ab6c55855c15a1e8f7ba9dee4"],["/tags/TravisCI/index.html","939e2cc5fd8d1bc01322051f474c4ffb"],["/tags/Valine/index.html","c070539156aed71a8a282efcafb30747"],["/tags/index.html","f0ca311fd3b3b05cc55350eb23d28648"],["/tags/lazyload/index.html","8c75f93abc9378e5d4f6e91ff60a7929"],["/tags/代码块/index.html","566e9d3b335039968870ccecd8d73f26"],["/tags/图片/index.html","15af7632f404e1d2b2f9ab09523721d1"],["/top/index.html","c732c23c2862776835e4afa42845684d"]];
var cacheName = 'sw-precache-v3--' + (self.registration ? self.registration.scope : '');
var firstRegister = 1; // 默认1是首次安装SW， 0是SW更新


var ignoreUrlParametersMatching = [/^utm_/];


var addDirectoryIndex = function (originalUrl, index) {
    var url = new URL(originalUrl);
    if (url.pathname.slice(-1) === '/') {
        url.pathname += index;
    }
    return url.toString();
};

var cleanResponse = function (originalResponse) {
    // 如果没有重定向响应，不需干啥
    if (!originalResponse.redirected) {
        return Promise.resolve(originalResponse);
    }

    // Firefox 50 及以下不知处 Response.body 流, 所以我们需要读取整个body以blob形式返回。
    var bodyPromise = 'body' in originalResponse ?
        Promise.resolve(originalResponse.body) :
        originalResponse.blob();

    return bodyPromise.then(function (body) {
        // new Response() 可同时支持 stream or Blob.
        return new Response(body, {
            headers: originalResponse.headers,
            status: originalResponse.status,
            statusText: originalResponse.statusText
        });
    });
};

var createCacheKey = function (originalUrl, paramName, paramValue,
    dontCacheBustUrlsMatching) {

    // 创建一个新的URL对象，避免影响原始URL
    var url = new URL(originalUrl);

    // 如果 dontCacheBustUrlsMatching 值没有设置，或是没有匹配到，将值拼接到url.serach后
    if (!dontCacheBustUrlsMatching ||
        !(url.pathname.match(dontCacheBustUrlsMatching))) {
        url.search += (url.search ? '&' : '') +
            encodeURIComponent(paramName) + '=' + encodeURIComponent(paramValue);
    }

    return url.toString();
};

var isPathWhitelisted = function (whitelist, absoluteUrlString) {
    // 如果 whitelist 是空数组，则认为全部都在白名单内
    if (whitelist.length === 0) {
        return true;
    }

    // 否则逐个匹配正则匹配并返回
    var path = (new URL(absoluteUrlString)).pathname;
    return whitelist.some(function (whitelistedPathRegex) {
        return path.match(whitelistedPathRegex);
    });
};

var stripIgnoredUrlParameters = function (originalUrl,
    ignoreUrlParametersMatching) {
    var url = new URL(originalUrl);
    // 移除 hash; 查看 https://github.com/GoogleChrome/sw-precache/issues/290
    url.hash = '';

    url.search = url.search.slice(1) // 是否包含 '?'
        .split('&') // 分割成数组 'key=value' 的形式
        .map(function (kv) {
            return kv.split('='); // 分割每个 'key=value' 字符串成 [key, value] 形式
        })
        .filter(function (kv) {
            return ignoreUrlParametersMatching.every(function (ignoredRegex) {
                return !ignoredRegex.test(kv[0]); // 如果 key 没有匹配到任何忽略参数正则，就 Return true
            });
        })
        .map(function (kv) {
            return kv.join('='); // 重新把 [key, value] 格式转换为 'key=value' 字符串
        })
        .join('&'); // 将所有参数 'key=value' 以 '&' 拼接

    return url.toString();
};


var addDirectoryIndex = function (originalUrl, index) {
    var url = new URL(originalUrl);
    if (url.pathname.slice(-1) === '/') {
        url.pathname += index;
    }
    return url.toString();
};

var hashParamName = '_sw-precache';
var urlsToCacheKeys = new Map(
    precacheConfig.map(function (item) {
        var relativeUrl = item[0];
        var hash = item[1];
        var absoluteUrl = new URL(relativeUrl, self.location);
        var cacheKey = createCacheKey(absoluteUrl, hashParamName, hash, false);
        return [absoluteUrl.toString(), cacheKey];
    })
);

function setOfCachedUrls(cache) {
    return cache.keys().then(function (requests) {
        // 如果原cacheName中没有缓存任何收，就默认是首次安装，否则认为是SW更新
        if (requests && requests.length > 0) {
            firstRegister = 0; // SW更新
        }
        return requests.map(function (request) {
            return request.url;
        });
    }).then(function (urls) {
        return new Set(urls);
    });
}

self.addEventListener('install', function (event) {
    event.waitUntil(
        caches.open(cacheName).then(function (cache) {
            return setOfCachedUrls(cache).then(function (cachedUrls) {
                return Promise.all(
                    Array.from(urlsToCacheKeys.values()).map(function (cacheKey) {
                        // 如果缓存中没有匹配到cacheKey，添加进去
                        if (!cachedUrls.has(cacheKey)) {
                            var request = new Request(cacheKey, { credentials: 'same-origin' });
                            return fetch(request).then(function (response) {
                                // 只要返回200才能继续，否则直接抛错
                                if (!response.ok) {
                                    throw new Error('Request for ' + cacheKey + ' returned a ' +
                                        'response with status ' + response.status);
                                }

                                return cleanResponse(response).then(function (responseToCache) {
                                    return cache.put(cacheKey, responseToCache);
                                });
                            });
                        }
                    })
                );
            });
        })
            .then(function () {
            
            // 强制 SW 状态 installing -> activate
            return self.skipWaiting();
            
        })
    );
});

self.addEventListener('activate', function (event) {
    var setOfExpectedUrls = new Set(urlsToCacheKeys.values());

    event.waitUntil(
        caches.open(cacheName).then(function (cache) {
            return cache.keys().then(function (existingRequests) {
                return Promise.all(
                    existingRequests.map(function (existingRequest) {
                        // 删除原缓存中相同键值内容
                        if (!setOfExpectedUrls.has(existingRequest.url)) {
                            return cache.delete(existingRequest);
                        }
                    })
                );
            });
        }).then(function () {
            
            return self.clients.claim();
            
        }).then(function () {
                // 如果是首次安装 SW 时, 不发送更新消息（是否是首次安装，通过指定cacheName 中是否有缓存信息判断）
                // 如果不是首次安装，则是内容有更新，需要通知页面重载更新
                if (!firstRegister) {
                    return self.clients.matchAll()
                        .then(function (clients) {
                            if (clients && clients.length) {
                                clients.forEach(function (client) {
                                    client.postMessage('sw.update');
                                })
                            }
                        })
                }
            })
    );
});



    self.addEventListener('fetch', function (event) {
        if (event.request.method === 'GET') {

            // 是否应该 event.respondWith()，需要我们逐步的判断
            // 而且也方便了后期做特殊的特殊
            var shouldRespond;


            // 首先去除已配置的忽略参数及hash
            // 查看缓存简直中是否包含该请求，包含就将shouldRespond 设为true
            var url = stripIgnoredUrlParameters(event.request.url, ignoreUrlParametersMatching);
            shouldRespond = urlsToCacheKeys.has(url);

            // 如果 shouldRespond 是 false, 我们在url后默认增加 'index.html'
            // (或者是你在配置文件中自行配置的 directoryIndex 参数值)，继续查找缓存列表
            var directoryIndex = 'index.html';
            if (!shouldRespond && directoryIndex) {
                url = addDirectoryIndex(url, directoryIndex);
                shouldRespond = urlsToCacheKeys.has(url);
            }

            // 如果 shouldRespond 仍是 false，检查是否是navigation
            // request， 如果是的话，判断是否能与 navigateFallbackWhitelist 正则列表匹配
            var navigateFallback = '';
            if (!shouldRespond &&
                navigateFallback &&
                (event.request.mode === 'navigate') &&
                isPathWhitelisted([], event.request.url)
            ) {
                url = new URL(navigateFallback, self.location).toString();
                shouldRespond = urlsToCacheKeys.has(url);
            }

            // 如果 shouldRespond 被置为 true
            // 则 event.respondWith()匹配缓存返回结果，匹配不成就直接请求.
            if (shouldRespond) {
                event.respondWith(
                    caches.open(cacheName).then(function (cache) {
                        return cache.match(urlsToCacheKeys.get(url)).then(function (response) {
                            if (response) {
                                return response;
                            }
                            throw Error('The cached response that was expected is missing.');
                        });
                    }).catch(function (e) {
                        // 如果捕获到异常错误，直接返回 fetch() 请求资源
                        console.warn('Couldn\'t serve response for "%s" from cache: %O', event.request.url, e);
                        return fetch(event.request);
                    })
                );
            }
        }
    });









/* eslint-enable */
