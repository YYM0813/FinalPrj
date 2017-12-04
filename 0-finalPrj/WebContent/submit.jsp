<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<!-- saved from url=(0045)http://www.tjfozoon.com/Shopping/Confirm.html -->
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

    <link href="/0-finalPrj/js/sweet-alert.css" rel="stylesheet" type="text/css">
    <script src="/0-finalPrj/js/sweet-alert.min.js" type="text/javascript"></script>

    
    <title>填写订单信息 -
        法颂蛋糕官网|FOZOON—天津生日蛋糕网上订购新鲜配送</title>
    <script src="/0-finalPrj/js/product.js"></script>
    
    <link href="/0-finalPrj/cxs/mobiscroll_date.css" rel="stylesheet">
    <link href="/0-finalPrj/css/mobiscroll.css" rel="stylesheet">
    <script src="/0-finalPrj/js/mobiscroll_date.js" charset="gb2312"></script>
    <script src="/0-finalPrj/js/mobiscroll.js"></script>
    <script>
    function SetTotalAllPrice() {
        var total_price1 = parseFloat($("#total_price").val());
        var coupon_amount = parseFloat($("#coupon_amount").val());
        var integral_price = parseFloat($("#integral_price").val());
        var integralmultiple = parseInt($("#integralmultiple").val());
        var total_freight = parseFloat($("#total_freight").val()).toFixed(2);
        var total_level_price = parseFloat($("#total_level_price").val());
        var ispay_integral = parseFloat(total_price1 - coupon_amount - total_freight - total_level_price).toFixed(2);
        var all_price = parseFloat(total_price1 - coupon_amount - integral_price - total_freight - total_level_price).toFixed(2);

        $("#integral_price_txt").html("-" + integral_price);
        $("#coupon_amount_txt").html("-" + coupon_amount);

        if (all_price <= 0) {
            $("#total_all_price1").html("0.00");
            $("#add-integral").html("+0");
            $("#ispay_integral").val("0");
        }
        else {
            $("#total_all_price1").html(all_price);
            if (all_price >= 1) {
                $("#add-integral").html("+" + parseInt(all_price * integralmultiple));
            } else {
                $("#add-integral").html("+0");
            }
            $("#ispay_integral").val(ispay_integral);
        }
    }
    </script>
    <style>
        .qr-order .qr-o .gr .gra-way {
            border: 1px solid #f0f1f0;
            background-color: #fff;
        }

            .qr-order .qr-o .gr .gra-way.act, .qr-order .qr-o .gr .gra-way:hover {
                border-color: #b69b65;
                color: #b69b65;
            }

        @media (max-width: 767px) {
            .qr-order .qr-o .gr .gra-way {
                text-align: center;
                width: 96%;
                padding: .2rem 0;
            }
        }

        .qr-order .qr-o .gr.syyhq .input_div .inp.select {
            width: 200px;
            height: 50px;
            outline: none;
            border: 1px solid #b69b65;
        }

        @media (max-width: 767px) {
            .qr-order .qr-o .gr.pstime.syyhq dt {
                width: 20%;
            }

            .qr-order .qr-o .gr.pstime dd {
                width: 80%;
            }

            .qr-order .qr-o .gr.pstime .input_div .inp.date {
                width: 34%;
                text-align: left;
            }

            .qr-order .qr-o .gr.syyhq .input_div .inp.select {
                width: 46%;
                height: .725rem;
                padding-top: .1rem;
                padding-bottom: .1rem;
            }
        }
    </style>

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

    

<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE3MTMwMDc3NTAPZBYCZg9kFgYCAQ9kFgICAQ9kFgICAQ8WAh4LXyFJdGVtQ291bnRmZAICDxYCHwACBRYKZg9kFgJmDxUCBTEwMTcyDOWFs+S6juazlemigmQCAQ9kFgJmDxUCBTEwMTczDOS8muWRmOmhu+efpWQCAg9kFgJmDxUCBTEwMTc0DOi0reeJqeaMh+WNl2QCAw9kFgJmDxUCBTEwMTc1DOmFjemAgeivtOaYjmQCBA9kFgJmDxUCBTEwMTc2DOacgOaWsOaLm+iBmGQCAw8WAh8AAgIWBGYPZBYCZg8VATtodHRwOi8vd3BhLnFxLmNvbS9tc2dyZD92PTMmdWluPTI1MDMzNDMyNTkmc2l0ZT1xcSZtZW51PXllc2QCAQ9kFgJmDxUBO2h0dHA6Ly93cGEucXEuY29tL21zZ3JkP3Y9MyZ1aW49MTYzODQ2MDM1MyZzaXRlPXFxJm1lbnU9eWVzZGT0K1pKmgBhr7eko4ppFTtmITUB4Yyrr6oHeaWUEBJpsQ==">
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['aspnetForm'];
if (!theForm) {
    theForm = document.aspnetForm;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="BDC6C074">
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAPnHPGKcx7OCiwa/Og7SJe4hsMsgZZaO1Hs9mFerTMaTar4MO7WeFrYwUQJWBerd8cChtDi/FQlc3pHtgmWZWS4cESB8WNHDZE6Rjnaae8cVg==">
</div>
        <div class="mauto mt45">
            <h4 class="tac fs36 c9 li38 text-m frumo">Shopping Cart</h4>
            <h6 class="tac fs14 c9 li18 text text-b">填写订单信息</h6>
            <div class="cart_title tac mt30 mb40">
                <a href="javascript:void(0);" class="dib">我的购物车<em></em></a>
                <a href="javascript:void(0);" class="dib">填写订单信息<em></em></a>
                <a href="javascript:void(0);" class="dib act">完成订单<em></em></a>
            </div>
            
            <h1>您的订单已经提交~~</h1>
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
            <a href="http://www.tjfozoon.com/Shopping/Confirm.html###" class="qq"></a>
            <a href="http://www.tjfozoon.com/Shopping/Confirm.html###" class="wb"></a>
            <a href="http://www.tjfozoon.com/Shopping/Confirm.html###" class="wx"></a>
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
            <li><a href="http://www.tjfozoon.com/Shopping/Car.html" class="a01"></a><span class="ioc db abs tac" id="t_car_num">1</span></li>
            
                    <li><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=2503343259&amp;site=qq&amp;menu=yes" class="a02"></a></li>
                
                    <li><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=1638460353&amp;site=qq&amp;menu=yes" class="a02"></a></li>
                
            <li><a href="javascript:void(0);" class="a03"></a><span class="db abs tac p-num">4000 - 233 - 234</span></li>
            <li><a href="javascript:void(0);" class="a05"></a><span class="db abs tac ewm">
                <img src="/0-finalPrj/img/ewm.jpg"></span></li>
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