<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/reset.css" tppabs="http://www.tjfozoon.com/Web/style/css/reset.css">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/jquery.bxslider.min.css" tppabs="http://www.tjfozoon.com/Web/style/css/jquery.bxslider.min.css">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/animate.css" tppabs="http://www.tjfozoon.com/Web/style/css/animate.css">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/layout.css" tppabs="http://www.tjfozoon.com/Web/style/css/layout.css">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/dll.css" tppabs="http://www.tjfozoon.com/Web/style/css/dll.css">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/banner_css.css" tppabs="http://www.tjfozoon.com/Web/style/css/banner_css.css">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/media.css" tppabs="http://www.tjfozoon.com/Web/style/css/media.css">
    <script type="text/javascript" src="/0-finalPrj/js/jquery-1.8.3.min.js" tppabs="http://www.tjfozoon.com/Web/style/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="/0-finalPrj/js/jquery.bxslider.min.js" tppabs="http://www.tjfozoon.com/Web/style/js/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="/0-finalPrj/js/rem.js" tppabs="http://www.tjfozoon.com/Web/style/js/rem.js"></script>
    <script type="text/javascript" src="/0-finalPrj/js/main.js" tppabs="http://www.tjfozoon.com/Web/style/js/main.js"></script>
    <script type="text/javascript" src="/0-finalPrj/js/wow.min.js" tppabs="http://www.tjfozoon.com/Web/style/js/wow.min.js"></script>

    <link href="/0-finalPrj/css/sweet-alert.css" tppabs="http://www.tjfozoon.com/Web/style/lib/sweet-alert.css" rel="stylesheet" type="text/css" />
    <script src="/0-finalPrj/js/sweet-alert.min.js" tppabs="http://www.tjfozoon.com/Web/style/lib/sweet-alert.min.js" type="text/javascript"></script>

    
    <title>会员登录 - 法颂蛋糕官网|FOZOON—天津生日蛋糕网上订购新鲜配送</title>
    <script src="${ctx }/js/dispose.js" tppabs="http://www.tjfozoon.com/Web/style/js/dispose.js"></script>
    <meta name="Keywords" content="天津蛋糕，天津生日蛋糕，预订生日蛋糕，蛋糕配送，天津蛋糕配送，法颂，法颂蛋糕，动物奶油蛋糕，天津婚庆蛋糕、天津寿宴蛋糕、天津定制宴会蛋糕、诺心，诺心蛋糕，21cake，21cake蛋糕，好利来，好利来蛋糕，津乐园，巴黎贝甜，多乐之日，" />
    <meta name="Description" content="天津生日蛋糕订购平台，网上预订当日配送，网上可选购甜品、礼盒、马卡龙、儿童蛋糕、慕斯蛋糕、乳脂蛋糕、婚庆蛋糕、冰淇淋蛋糕、蛋黄酥等产品。生日蛋糕仅限天津市部分区域配送，礼盒及部分甜品类产品全国免费配送。" />
</head>
<body>
    
    <!-- 头部置顶 -->
    <div class="header w100 tac rel bgcf act">
        <a class="logo db fl mt25" href="index.htm" tppabs="http://www.tjfozoon.com/">
            <img src="${ctx }/img/logo.png" tppabs="http://www.tjfozoon.com/Web/style/images/logo.png" class="img100"></a>
        <ul class="nav dib abs bm-dn">
            <li class="home"><a href="index.htm" tppabs="http://www.tjfozoon.com/" class="db h100"></a></li>
            
            <li><a href="List.html" tppabs="http://www.tjfozoon.com/Product/10181/List.html" class="db"><span class="s1">蛋糕系列</span><span class="s2">CAKE</span></a></li>
            <li><a href="List-1.html" tppabs="http://www.tjfozoon.com/Product/10183/List.html" class="db"><span class="s1">欧风系列</span><span class="s2">EUROPE CAKE</span></a></li>
            <li><a href="List-2.html" tppabs="http://www.tjfozoon.com/Product/10184/List.html" class="db"><span class="s1">下午茶</span><span class="s2">AFTERNOON TEA</span></a></li>
            <li><a href="List-3.html" tppabs="http://www.tjfozoon.com/Product/10182/List.html" class="db"><span class="s1">礼盒专区</span><span class="s2">GIFT</span></a></li>
            <li><a href="Index.html" tppabs="http://www.tjfozoon.com/Product/Company/Index.html" class="db"><span class="s1">企业专区</span><span class="s2">BUSINESS</span></a></li>
            <li><a href="Login.html-rurl=-UserCenter-Index.html" tppabs="http://www.tjfozoon.com/UserCenter/Index.html" class="db"><span class="s1">会员中心</span><span class="s2">MEMBER</span></a></li>
            <li><a href="Index-2.html" tppabs="http://www.tjfozoon.com/ContactUs/Index.html" class="db"><span class="s1">联系我们</span><span class="s2">CONTACT</span></a></li>
            <li class="login-btn">
                
                <a href="Register.html" tppabs="http://www.tjfozoon.com/Register.html" class="dib">注册</a>
                <a href="javascript:if(confirm(%27http://www.tjfozoon.com/Login.html?rurl=%2fLogin.html  \n\nThis file was not retrieved by Teleport Pro, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon.  \n\nDo you want to open it from the server?%27))window.location=%27http://www.tjfozoon.com/Login.html?rurl=%2fLogin.html%27" tppabs="http://www.tjfozoon.com/Login.html?rurl=%2fLogin.html" class="dib login">登录</a>
                
            </li>
            <div class="clr"></div>
        </ul>
        <div class="fr login-btn bm-dn">
            
            <a href="Register.html" tppabs="http://www.tjfozoon.com/Register.html" class="dib">注册</a>
            <a href="javascript:if(confirm(%27http://www.tjfozoon.com/Login.html?rurl=%2fLogin.html  \n\nThis file was not retrieved by Teleport Pro, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon.  \n\nDo you want to open it from the server?%27))window.location=%27http://www.tjfozoon.com/Login.html?rurl=%2fLogin.html%27" tppabs="http://www.tjfozoon.com/Login.html?rurl=%2fLogin.html" class="dib login">登录</a>
            
        </div>
        <a href="javascript:void(0);" class="dn bm-db fr nav-ico h100 mr15"></a>
        <a href="Login.html-rurl=-UserCenter-Index.html" tppabs="http://www.tjfozoon.com/UserCenter/Index.html" class="dn bm-db fr menber-ico h100 mr15"></a>
        <a href="Login.html-rurl=-Shopping-Car.html" tppabs="http://www.tjfozoon.com/Shopping/Car.html" class="dn bm-db fr cart-ico h100 mr15"></a>
        <div class="clr"></div>
    </div>
    <div class="n-header act"></div>

    
    <!-- 登录页面 -->
    <div class="login mauto pt70 pb70 pb30" style="background-image: url(${ctx }/img/20170120113552497.jpg)/*tpa=http://www.tjfozoon.com/UserFiles/upload/image/20170120/20170120113552497.jpg*/;">
        <div class="login_left fl">
            &nbsp;
        </div>
        <div class="login_right tac fl">
            <p class="fs24 c9 mb5 text-m">会员登录</p>
            <p class="fs12 c9 fa text">MEMBER LOGIN</p>
            <div class="mt30 input_div">
                <input type="text" id="email" placeholder="邮箱" class="inp login_text" />
                <input type="password" id="password" placeholder="密码" class="inp login_text" />
                <input type="submit" onclick="Login();" id="submit" value="立即登录"  class="inp submit mt25 w100" style="cursor:pointer;" />
                <p class="clearfix"></p>
			<p class="clearfix"><a href="ForgotPwd.html" tppabs="http://www.tjfozoon.com/ForgotPwd.html" class="fl fs14 c9 text">忘记密码？</a><a href="Register.html" tppabs="http://www.tjfozoon.com/Register.html" class="fr fs14 c9 text">注册账号</a></p>		
            <p class="clearfix fl fs14 c9 text tal mt20">老网站会员请使用注册时预留手机号码登陆，原登陆密码不变。</p>
            </div>
        </div>
        <div class="clr"></div>
    </div>
    <script>
        $(".login_text").keydown(function (ev) {
            var ev = ev || event;
            if ($(this).val() != '') {
                if (ev.keyCode == 13) {
                    $(".submit").click();
                }
            }
        });

    </script>



    <!-- 底部 -->
    <div class="footer tac pb45">
        <a href="index.htm" tppabs="http://www.tjfozoon.com/" class="dib f-logo sm-dn">
            <img src="${ctx }/img/footer-logo.png" tppabs="http://www.tjfozoon.com/Web/style/images/footer-logo.png" class="img100" /></a>
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
            <a href="###" class="qq"></a>
            <a href="###" class="wb"></a>
            <a href="###" class="wx"></a>
        </div>
        <div class="footer_nav pb20">
            
                    <a href="Index-5.html" tppabs="http://www.tjfozoon.com/About/10172/Index.html">关于法颂</a><span>|</span>
                
                    <a href="Index-6.html" tppabs="http://www.tjfozoon.com/About/10173/Index.html">会员须知</a><span>|</span>
                
                    <a href="Index-7.html" tppabs="http://www.tjfozoon.com/About/10174/Index.html">购物指南</a><span>|</span>
                
                    <a href="Index-8.html" tppabs="http://www.tjfozoon.com/About/10175/Index.html">配送说明</a><span>|</span>
                
                    <a href="Index-9.html" tppabs="http://www.tjfozoon.com/About/10176/Index.html">最新招聘</a><span>|</span>
                
            <a href="Index-10.html" tppabs="http://www.tjfozoon.com/Message/Index.html">在线留言</a>
        </div>
        <div class="li24 fs12 pl30 pr30"><p>版权所有 &copy; 2005-2017 天津法颂FOZOON &nbsp;津ICP备：15001361号</p></div>
    </div>

    <div class="fixed-right bm-dn">
        <ul>
            <li><a href="Login.html-rurl=-Shopping-Car.html" tppabs="http://www.tjfozoon.com/Shopping/Car.html" class="a01"></a><span class="ioc db abs tac" id="t_car_num">0</span></li>
            
                    <li><a href="javascript:if(confirm(%27http://wpa.qq.com/msgrd?v=3&uin=2503343259&site=qq&menu=yes  \n\nThis file was not retrieved by Teleport Pro, because it is addressed on a domain or path outside the boundaries set for its Starting Address.  \n\nDo you want to open it from the server?%27))window.location=%27http://wpa.qq.com/msgrd?v=3&uin=2503343259&site=qq&menu=yes%27" tppabs="http://wpa.qq.com/msgrd?v=3&uin=2503343259&site=qq&menu=yes" class="a02"></a></li>
                
                    <li><a href="javascript:if(confirm(%27http://wpa.qq.com/msgrd?v=3&uin=1638460353&site=qq&menu=yes  \n\nThis file was not retrieved by Teleport Pro, because it is addressed on a domain or path outside the boundaries set for its Starting Address.  \n\nDo you want to open it from the server?%27))window.location=%27http://wpa.qq.com/msgrd?v=3&uin=1638460353&site=qq&menu=yes%27" tppabs="http://wpa.qq.com/msgrd?v=3&uin=1638460353&site=qq&menu=yes" class="a02"></a></li>
                
            <li><a href="javascript:void(0);" class="a03"></a><span class="db abs tac p-num">4000 - 233 - 234</span></li>
            <li><a href="javascript:void(0);" class="a05"></a><span class="db abs tac ewm">
                <img src="${ctx }/img/ewm.jpg" tppabs="http://www.tjfozoon.com/Web/style/images/ewm.jpg" /></span></li>
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
            hm.src = "hm.js-28f9818b5430d72f9a608300bf19dcad"/*tpa=https://hm.baidu.com/hm.js?28f9818b5430d72f9a608300bf19dcad*/;
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
</body>
</html>





