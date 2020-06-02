{# share.js分享，只有进入文章页面才加载js和css #}
{%- if url.search("/posts/") != -1 %}
<link rel="stylesheet" href="/js/sharejs/css/share.min.css">
<script src="/js/sharejs/js/social-share.min.js"></script>
{%- endif %}

{# 分类页样式js，只有进入分类页面才加载js #}
{%- if url.search("/categories/") != -1 %}
    <script type="text/javascript" src="/js/category-color.js"></script>
{%- endif %}

{# 标签页样式js,只有进入标签页面才加载js #}
{%- if url.search("/tags/") != -1 %}
    <script type="text/javascript" src="/js/tag-color.js"></script>
{%- endif %}

{# 友链样式js,只有进入友链页面才加载js #}
{%- if url.search("/links/") != -1 %}
    {%- if theme.link_style.type == 'color' %}
        {# 彩色友情链接页 #}
        <script type="text/javascript" src="/js/links-color.js"></script>
    {%- else %}
        {# 瀑布流友情链接页 #}
        <script type="text/javascript" src="/js/links-waterfall.js"></script>
    {%- endif %}
{%- endif %}

{# 文章热度js，只有进入top页面才加载js #}
{%- if url.search("/top/") != -1 %}
    <script type="text/javascript" src="/js/top.js"></script>
{%- endif %}

{# 文章加密js #}
{%- if theme.password.enable %}
    <script type="text/javascript" src="/js/password.js"></script>
    <script type="text/javascript">
        password('{{ page.password }}');
    </script>
{%- endif %}

{# 关于我js，只有进入关于我页面才加载js #}
{%- if url.search("/about/") != -1 %}
    <script src="https://cdn.jsdelivr.net/vue/latest/vue.min.js"></script>
    <script src="/js/botui.js"></script>
    <script src="/js/botui-message.js"></script>
{%- endif %}

{# 点击邮件中的链接跳转至相应评论js #}
<script type="text/javascript" src="/js/valine-comment-jump.js"></script>

{# 打赏模态框 #}
<div id="myModal" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
     aria-hidden="true" style="display: none;">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span
                        class="sr-only">Close</span></button>
                <h4 class="modal-title">赞赏作者</h4>
            </div>
            <div class="modal-body">
                <p class="text-center article__reward"><strong class="article__reward-text">扫一扫支付</strong></p>
                <div class="tab-contents"><img nogallery="" aria-labelledby="alipay-tab"
                                              class="pay-img tab-pane fade active in" id="alipay_author" role="tabpanel"
                                              src="/images/alipay.jpg"><img
                        nogallery="" aria-labelledby="wechatpay-tab" class="pay-img tab-pane fade" id="wechatpay_author"
                        role="tabpanel" src="/images/wechatpay.jpg"></div>
                <div class="article__reward-border mb20 mt10"></div>

                <div class="text-center" role="tablist">
                    <div class="pay-button" role="presentation" style="margin-right: 20px;">
                        <button href="#alipay_author" id="alipay-tab" aria-controls="alipay_author" role="tab"
                                data-toggle="tab" class="bootstrap-btn m-b-xs m-r-xs bootstrap-btn-info"><span>&nbsp;支付宝支付</span>
                        </button>
                    </div>
                    <div class="pay-button" role="presentation">
                        <button href="#wechatpay_author" id="wechatpay-tab" aria-controls="wechatpay_author" role="tab"
                                data-toggle="tab" class="bootstrap-btn m-b-xs bootstrap-btn-success"><span>&nbsp;微信支付</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
