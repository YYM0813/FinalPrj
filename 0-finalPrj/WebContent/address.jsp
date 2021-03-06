
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<!-- saved from url=(0052)http://www.tjfozoon.com/UserCenter/Address/List.html -->
<html lang="en" style="font-size: 160px;"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/reset.css">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/jquery.bxslider.min.css">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/animate.css">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/layout.css">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/dll.css">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/banner_css.css">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/media.css">
    <script src="/0-finalPrj/js/hm.js"></script>
    <script type="text/javascript" src="/0-finalPrj/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="/0-finalPrj/js/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="/0-finalPrj/js/rem.js"></script>
    <script type="text/javascript" src="/0-finalPrj/js/main.js"></script>
    <script type="text/javascript" src="/0-finalPrj/js/wow.min.js"></script>

    <link href="/0-finalPrj/css/sweet-alert.css" rel="stylesheet" type="text/css">
    <script src="/0-finalPrj/js/sweet-alert.min.js" type="text/javascript"></script>

    
    <title>地址管理 - 会员中心 -
        法颂蛋糕官网|FOZOON—天津生日蛋糕网上订购新鲜配送</title>
    <script src="/0-finalPrj/js/dispose.js" type="text/javascript"></script>

    <meta name="Keywords" content="天津蛋糕，天津生日蛋糕，预订生日蛋糕，蛋糕配送，天津蛋糕配送，法颂，法颂蛋糕，动物奶油蛋糕，天津婚庆蛋糕、天津寿宴蛋糕、天津定制宴会蛋糕、诺心，诺心蛋糕，21cake，21cake蛋糕，好利来，好利来蛋糕，津乐园，巴黎贝甜，多乐之日，">
    <meta name="Description" content="天津生日蛋糕订购平台，网上预订当日配送，网上可选购甜品、礼盒、马卡龙、儿童蛋糕、慕斯蛋糕、乳脂蛋糕、婚庆蛋糕、冰淇淋蛋糕、蛋黄酥等产品。生日蛋糕仅限天津市部分区域配送，礼盒及部分甜品类产品全国免费配送。">
</head>
<body>
    
    <!-- 头部置顶 -->
    <div class="header w100 tac rel bgcf act">
        <a class="logo db fl mt25" href="http://www.tjfozoon.com/">
            <img src="/0-finalPrj/img/logo.png" class="img100"></a>
        <ul class="nav dib abs bm-dn">
            <li class="home"><a href="http://www.tjfozoon.com/" class="db h100"></a></li>
            
            <li><a href="http://www.tjfozoon.com/Product/10181/List.html" class="db"><span class="s1">蛋糕系列</span><span class="s2">CAKE</span></a></li>
            <li><a href="http://www.tjfozoon.com/Product/10183/List.html" class="db"><span class="s1">欧风系列</span><span class="s2">EUROPE CAKE</span></a></li>
            <li><a href="http://www.tjfozoon.com/Product/10184/List.html" class="db"><span class="s1">下午茶</span><span class="s2">AFTERNOON TEA</span></a></li>
            <li><a href="http://www.tjfozoon.com/Product/10182/List.html" class="db"><span class="s1">礼盒专区</span><span class="s2">GIFT</span></a></li>
            <li><a href="http://www.tjfozoon.com/Product/Company/Index.html" class="db"><span class="s1">企业专区</span><span class="s2">BUSINESS</span></a></li>
            <li><a href="http://www.tjfozoon.com/UserCenter/Index.html" class="db"><span class="s1">会员中心</span><span class="s2">MEMBER</span></a></li>
            <li><a href="http://www.tjfozoon.com/ContactUs/Index.html" class="db"><span class="s1">联系我们</span><span class="s2">CONTACT</span></a></li>
            <li class="login-btn">
                
                <a href="http://www.tjfozoon.com/LoginOut.html" class="dib">退出</a>
                <a href="http://www.tjfozoon.com/Shopping/Car.html" class="dib login">购物车</a>
                
            </li>
            <div class="clr"></div>
        </ul>
        <div class="fr login-btn bm-dn">
            
            <a href="http://www.tjfozoon.com/UserCenter/Index.html" class="pr10" style="background-color: #FFF; color: #b69b65;">15732169632</a>
            <a href="http://www.tjfozoon.com/LoginOut.html" class="pr10" style="background-color: #FFF; color: #b69b65;">退出</a>
            <a href="http://www.tjfozoon.com/Shopping/Car.html" class="dib login">购物车</a>
            
        </div>
        <a href="javascript:void(0);" class="dn bm-db fr nav-ico h100 mr15"></a>
        <a href="http://www.tjfozoon.com/UserCenter/Index.html" class="dn bm-db fr menber-ico h100 mr15"></a>
        <a href="http://www.tjfozoon.com/Shopping/Car.html" class="dn bm-db fr cart-ico h100 mr15"></a>
        <div class="clr"></div>
    </div>
    <div class="n-header act"></div>

    
    <!--地址管理-->
    <div class="mauto mt45">
        <h4 class="tac fs36 c9 li38 text-m frumo">Member Centre</h4>
        <h6 class="tac fs14 c9 li18 text text-b">会员中心</h6>
        <div class="mt45 b_t_border menber xxx pt45 pb60">
            
<div class="menber_left fl ">
    
    <script>
        $(function () {
            $('.p-mnav-title').click(function () {
                $('.m-nav').slideToggle();
            })
            $(".p-mnav-title").html($(".m-nav li.act").attr("title"));
        })
    </script>
    <h3 class="text-b dn sm-db tac p-mnav-title pt20 pb20">地址管理</h3>
    
    <ul class="m-nav sm-dn">
        <li title="我的订单"><a href="http://www.tjfozoon.com/UserCenter/Order/List.html" class="a0">我的订单<span class="mnav_ico"></span></a></li>
        <li class="act" title="地址管理"><a href="http://www.tjfozoon.com/UserCenter/Address/List.html" class="a0">地址管理<span class="mnav_ico"></span></a></li>
      <li title="账户信息"><a href="http://www.tjfozoon.com/UserCenter/Info/Index.html" class="a5">账户信息<span class="mnav_ico"></span></a></li>
    </ul>
</div>

            <div class="menber_right fl tac">
                <div class="qr-order ps_address">                    
                    <!-- 地址列表 -->
                    <div class="qr-o pb30 address_list">
                        <dl class="address mb15 tal">
                            <c:forEach items="${addlist }" var="p">
                            <dd class="fs14 li22 a02-d">
                                <h1 class="li34 fs18 c6 pt5 pb5 text"><span class="dn sx-inline">收货人：</span>${p.name}<span class="dn sx-inline ml30 sx-fr">${p.tel}</span><div class="clr"></div>
                                </h1>
                                <p class="text sm-dn">${p.tel}</p>
                                <p class="text ovh2"><span class="dn sx-inline">收货地址：</span><span class="dn sx-inline">${p.address}</span></p>
                                <p class="ovh2 text sm-dn">${p.address }</p>
                                 <a href="/0-finalPrj/add.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新增地址</a><a href="/0-finalPrj/editaddress?id=${p.id }">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;编辑地址</a>
                            </dd>
                            </c:forEach>
                            <div class="clr"></div>
                        </dl>
                    </div>
                </div>
                <div class="clr"></div>

            </div>
            <div class="clr"></div>
        </div>
    </div>
    <!-- 添加地址弹出框 -->
    <div class="address_open dn">
        <div class="bg"></div>
        <div class="address-box">
            <style>
                .address_open .address-box .a-b-middle{
                    width:787px;
                }
                 .address_open .address-box .a-b-middle .abmiddle-l{
                     width:372px;
                     margin-right:15px;
                 }
                  .address_open .address-box .a-b-middle .abmiddle-r{
                     width:400px;
                 }
                  @media (max-width: 900px){
                      .address_open .address-box .a-b-middle{
                            width: 372px;
                            margin-top: calc((100vh - 644px) / 2);
                    }
                     .address_open .address-box .a-b-middle .abmiddle-l{
                         width:100%;
                         margin-right:0;
                     }
                      .address_open .address-box .a-b-middle .abmiddle-r{
                         width:100%;
                     }
                  }
                  @media (max-width: 540px){
                      .address_open .address-box .a-b-middle{
                            width: 80%;
                            margin-top: .4rem;
                    }
                  }
            </style>
            <form name="aspnetForm" method="post" action="http://www.tjfozoon.com/UserCenter/Address/List.html?umid=2" id="aspnetForm">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTU1MzM4OTI0MA9kFgJmD2QWBAICDxYCHgtfIUl0ZW1Db3VudAIFFgpmD2QWAmYPFQIFMTAxNzIM5YWz5LqO5rOV6aKCZAIBD2QWAmYPFQIFMTAxNzMM5Lya5ZGY6aG755+lZAICD2QWAmYPFQIFMTAxNzQM6LSt54mp5oyH5Y2XZAIDD2QWAmYPFQIFMTAxNzUM6YWN6YCB6K+05piOZAIED2QWAmYPFQIFMTAxNzYM5pyA5paw5oub6IGYZAIDDxYCHwACAhYEZg9kFgJmDxUBO2h0dHA6Ly93cGEucXEuY29tL21zZ3JkP3Y9MyZ1aW49MjUwMzM0MzI1OSZzaXRlPXFxJm1lbnU9eWVzZAIBD2QWAmYPFQE7aHR0cDovL3dwYS5xcS5jb20vbXNncmQ/dj0zJnVpbj0xNjM4NDYwMzUzJnNpdGU9cXEmbWVudT15ZXNkZH8n8LIWDGp7wpmduf4C48+qoxIgzqgNoQIc2AWOrc8D">
</div>

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="F291AE0D">
</div>
                <div class="a-b-middle">
                    <div class="fl abmiddle-l">
                        <p>
                            <input type="text" class="inp" id="txtConsignee" name="txtConsignee" value="" placeholder="收件人">
                        </p>
                        <p>
                            <input type="text" class="inp" id="txtMobile" name="txtMobile" value="" placeholder="手机号">
                        </p>
                        <p>
                            <textarea placeholder="输入详细收货地址（省/市/区/街道门牌）" id="txtAddress" name="txtAddress" class="inp"></textarea>
                        </p>
                        <div class="tar mb20">
                            <a href="http://www.tjfozoon.com/About/10175/Index.html" class="dib fs14 khaki text" target="_blank">查看配送说明</a>
                        </div>
                        <p class="tac">
                            <input type="hidden" value="0" id="rorder" name="rorder">
                            <input type="hidden" value="EditUserAddress" name="action">
                            <input type="hidden" value="0" name="id">
                            <a href="javascript:void(0);" onclick="SaveAddress()" class="db fl act">保存</a>
                            
                            <a href="http://www.tjfozoon.com/UserCenter/Address/List.html" class="db fr cancel">取消</a>
                            
                            </p><div class="clr"></div>
                        <p></p>
                    </div>
                    <div class="abmiddle-r fr">
                        <img src="./address_files/20170825114704333.jpg" class="img100">
                    </div>
                    <div class="clr"></div>
                </div>
            </form>
        </div>
    </div>


    <!-- 底部 -->
    <div class="footer tac pb45">
        <a href="http://www.tjfozoon.com/" class="dib f-logo sm-dn">
            <img src="/0-finalPrj/img/footer-logo.png" class="img100"></a>
        <div class="footer_info dm-dn">
            <dl>
                <dt class="fs16 fm li22">ADDRESS</dt>
                <dd>地址</dd>
                <dd class="dd ovh2">天津市津南区双港科技产业园区丽港园7号</dd>
            </dl>
            <dl>
                <dt class="fs16 fm li22">PHONE</dt>
                <dd>电话</dd>
                <dd class="dd ovh2">4000 - 233 - 234</dd>
            </dl>
            <dl class="last">
                <dt class="fs16 fm li22">E-MAIL</dt>
                <dd>邮箱</dd>
                <dd class="dd ovh2">tjfozoon@126.com</dd>
            </dl>
            <div class="clr"></div>
        </div>
        <div class="footer_share mb35 sm-dn">
            <a href="http://www.tjfozoon.com/UserCenter/Address/List.html###" class="qq"></a>
            <a href="http://www.tjfozoon.com/UserCenter/Address/List.html###" class="wb"></a>
            <a href="http://www.tjfozoon.com/UserCenter/Address/List.html###" class="wx"></a>
        </div>
        <div class="footer_nav pb20">
            
                    <a href="http://www.tjfozoon.com/About/10172/Index.html">关于法颂</a><span>|</span>
                
                    <a href="http://www.tjfozoon.com/About/10173/Index.html">会员须知</a><span>|</span>
                
                    <a href="http://www.tjfozoon.com/About/10174/Index.html">购物指南</a><span>|</span>
                
                    <a href="http://www.tjfozoon.com/About/10175/Index.html">配送说明</a><span>|</span>
                
                    <a href="http://www.tjfozoon.com/About/10176/Index.html">最新招聘</a><span>|</span>
                
            <a href="http://www.tjfozoon.com/Message/Index.html">在线留言</a>
        </div>
        <div class="li24 fs12 pl30 pr30"><p>版权所有 © 2005-2017 天津法颂FOZOON &nbsp;津ICP备：15001361号</p></div>
    </div>

    <div class="fixed-right bm-dn">
        <ul>
            <li><a href="http://www.tjfozoon.com/Shopping/Car.html" class="a01"></a><span class="ioc db abs tac" id="t_car_num">2</span></li>
            
                    <li><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=2503343259&amp;site=qq&amp;menu=yes" class="a02"></a></li>
                
                    <li><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=1638460353&amp;site=qq&amp;menu=yes" class="a02"></a></li>
                
            <li><a href="javascript:void(0);" class="a03"></a><span class="db abs tac p-num">4000 - 233 - 234</span></li>
            <li><a href="javascript:void(0);" class="a05"></a><span class="db abs tac ewm">
                <img src="./address_files/ewm.jpg"></span></li>
            <li class="xxx dn"><a href="javascript:void(0);" class="a04"></a></li>

        </ul>
    </div>
    <script>
        $(window).scroll(function () {
            if ($(window).scrollTop() >= $(window).height()) {
                $('.fixed-right .xxx').fadeIn();

            } else {
                $('.fixed-right .xxx').fadeOut();
            }
        })
        $(function () {
            $('.fixed-right .xxx').click(function () {
                $('html body').animate({ "scrollTop": 0 });
                $('html').animate({ "scrollTop": 0 });
            });
        });
    </script>
    <script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?28f9818b5430d72f9a608300bf19dcad";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>







</body></html>