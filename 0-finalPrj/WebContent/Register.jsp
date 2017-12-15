<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" type="text/css" href="${ctx }/css/reset.css" tppabs="http://www.tjfozoon.com/Web/style/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${ctx }/css/jquery.bxslider.min.css" tppabs="http://www.tjfozoon.com/Web/style/css/jquery.bxslider.min.css">
    <link rel="stylesheet" type="text/css" href="${ctx }/css/animate.css" tppabs="http://www.tjfozoon.com/Web/style/css/animate.css">
    <link rel="stylesheet" type="text/css" href="${ctx }/css/layout.css" tppabs="http://www.tjfozoon.com/Web/style/css/layout.css">
    <link rel="stylesheet" type="text/css" href="${ctx }/css/dll.css" tppabs="http://www.tjfozoon.com/Web/style/css/dll.css">
    <link rel="stylesheet" type="text/css" href="${ctx }/css/banner_css.css" tppabs="http://www.tjfozoon.com/Web/style/css/banner_css.css">
    <link rel="stylesheet" type="text/css" href="${ctx }/css/media.css" tppabs="http://www.tjfozoon.com/Web/style/css/media.css">
    <script type="text/javascript" src="${ctx }/js/jquery-1.8.3.min.js" tppabs="http://www.tjfozoon.com/Web/style/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="${ctx }/js/jquery.bxslider.min.js" tppabs="http://www.tjfozoon.com/Web/style/js/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="${ctx }/js/rem.js" tppabs="http://www.tjfozoon.com/Web/style/js/rem.js"></script>
    <script type="text/javascript" src="${ctx }/js/main.js" tppabs="http://www.tjfozoon.com/Web/style/js/main.js"></script>
    <script type="text/javascript" src="${ctx }/js/wow.min.js" tppabs="http://www.tjfozoon.com/Web/style/js/wow.min.js"></script>

    <link href="${ctx }/css/sweet-alert.css" tppabs="http://www.tjfozoon.com/Web/style/lib/sweet-alert.css" rel="stylesheet" type="text/css" />
    <script src="${ctx }/js/sweet-alert.min.js" tppabs="http://www.tjfozoon.com/Web/style/lib/sweet-alert.min.js" type="text/javascript"></script>

    
    <title>会员注册 - 法颂蛋糕官网|FOZOON—天津生日蛋糕网上订购新鲜配送</title>
    <script src="${ctx }/js/dispose.js" tppabs="http://www.tjfozoon.com/Web/style/js/dispose.js"></script>
	
   </head>
<body>
    
    <!-- 头部置顶 -->
    <div class="header w100 tac rel bgcf act">
        <a class="logo db fl mt25" href="index.htm" tppabs="http://www.tjfozoon.com/">
            <img src="${ctx }/img/logo.png" tppabs="http://www.tjfozoon.com/Web/style/images/logo.png" class="img100"></a>
       <ul class="nav dib abs bm-dn">
            <li class="home"><a href="index.htm" tppabs="http://www.tjfozoon.com/" class="db h100"></a></li>
            
            <li><a href="product/list?typeid=0" class="db"><span class="s1">蛋糕系列</span><span class="s2">CAKE</span></a></li>
            <li><a href="product/list?typeid=1"  class="db"><span class="s1">欧风系列</span><span class="s2">EUROPE CAKE</span></a></li>
            <li><a href="product/list?typeid=2"  class="db"><span class="s1">下午茶</span><span class="s2">AFTERNOON TEA</span></a></li>
            <li><a href="product/list?typeid=3" class="db"><span class="s1">礼盒专区</span><span class="s2">GIFT</span></a></li>
            <li><a href="${ctx }/Index.html" tppabs="http://www.tjfozoon.com/Product/Company/Index.html" class="db"><span class="s1">企业专区</span><span class="s2">BUSINESS</span></a></li>
            <li><a href="${ctx }/user-info.jsp" tppabs="http://www.tjfozoon.com/UserCenter/Index.html" class="db"><span class="s1">会员中心</span><span class="s2">MEMBER</span></a></li>
            <li><a href="${ctx }/Index-2.html" tppabs="http://www.tjfozoon.com/ContactUs/Index.html" class="db"><span class="s1">联系我们</span><span class="s2">CONTACT</span></a></li>
 
            <div class="clr"></div>
        </ul>
        <div class="fr login-btn bm-dn">
            
            <a href="Register.html" tppabs="http://www.tjfozoon.com/Register.html" class="dib">注册</a>
            <a href="Login.html-rurl=-Register.html" tppabs="http://www.tjfozoon.com/Login.html?rurl=%2fRegister.html" class="dib login">登录</a>
            
        </div>
        <a href="javascript:void(0);" class="dn bm-db fr nav-ico h100 mr15"></a>
        <a href="Login.html-rurl=-UserCenter-Index.html" tppabs="http://www.tjfozoon.com/UserCenter/Index.html" class="dn bm-db fr menber-ico h100 mr15"></a>
        <a href="Login.html-rurl=-Shopping-Car.html" tppabs="http://www.tjfozoon.com/Shopping/Car.html" class="dn bm-db fr cart-ico h100 mr15"></a>
        <div class="clr"></div>
    </div>
    <div class="n-header act"></div>

    
    <!-- 注册页面 -->
    <div class="reg mauto mt70 mb70 pb30">
        <div class="w76 ma mm-w98">
            <div class="reg_left fl">
                <p class="fs24 c9 mb5 text-m w360">会员注册</p>
                <p class="fs12 c9 fa text w360">MEMBER REGISTRATION</p>
                <div class="mt30 input_div">
                 	<input type="text" id="name" placeholder="用户名" class="inp w328"><br>
                    <input type="text" id="email" placeholder="邮箱" class="inp w328">
                    <p>
                        <input type="password" id="password" placeholder="设置密码" class="inp pwd w360"><span class="fs12 c9 ml5 dib text sm-mb15">密码必须是6-20位字符，可使用字母、数字</span>
                    </p>
                    <input type="password" id="confirmpwd" placeholder="确认密码" class="inp pwd w360">
                    <p class="fs14 c9 tal mb20 w360 sm-w100">
                        <input type="checkbox" id="ckeval" class="checkbox mr10 dib"><span class="dib vt mt8 sm-mt0 text">阅读并同意<a href="http://www.tjfozoon.com/Other/10178/Index.html" class="khaki fs14 text">《法颂用户服务协议》</a></span>
                    </p>
                    <input type="submit" onclick="Register();" value="提交注册" class="inp submit w360 sm-w100">
                </div>
            </div>
            <div class="reg_right fr mt70 pt70">
                <p class="fs14 c9 text li24 pl55 mt70">我已经注册，<span class="db sm-dn"></span>现在就 <a href="${ctx }/Login.jsp" tppabs="http://www.tjfozoon.com/Login.html" class="fs14 c9 text khaki">登录</a></p>
            </div>
            <div class="clr"></div>
        </div>

    </div>


    <!-- 底部 -->
    <div class="footer tac pb45">
        <a href="${ctx }/index-1.jsp" tppabs="http://www.tjfozoon.com/" class="dib f-logo sm-dn">
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





