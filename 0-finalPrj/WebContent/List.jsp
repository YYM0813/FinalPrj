<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
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

    
    <title>蛋糕 - 法颂蛋糕官网|FOZOON—天津生日蛋糕网上订购新鲜配送</title>    
    <style>
        @media (max-width: 767px) {
            .proList li .p-img {
                height: auto;
            }
        }

        .p-box .frumo {
            height: 44px;
        }
    </style>

    <meta name="Keywords" content="天津蛋糕，天津生日蛋糕，预订生日蛋糕，蛋糕配送，天津蛋糕配送，法颂，法颂蛋糕，动物奶油蛋糕，天津婚庆蛋糕、天津寿宴蛋糕、天津定制宴会蛋糕、诺心，诺心蛋糕，21cake，21cake蛋糕，好利来，好利来蛋糕，津乐园，巴黎贝甜，多乐之日，" />
    <meta name="Description" content="天津生日蛋糕订购平台，网上预订当日配送，网上可选购甜品、礼盒、马卡龙、儿童蛋糕、慕斯蛋糕、乳脂蛋糕、婚庆蛋糕、冰淇淋蛋糕、蛋黄酥等产品。生日蛋糕仅限天津市部分区域配送，礼盒及部分甜品类产品全国免费配送。" />
</head>
<body>
    
     <!-- 头部置顶 -->
    <div class="header w100 tac rel bgcf act">
        <a class="logo db fl mt25" href="index.htm" tppabs="http://www.tjfozoon.com/">
            <img src="/0-finalPrj/img/logo.png" tppabs="http://www.tjfozoon.com/Web/style/images/logo.png" class="img100"></a>
        <ul class="nav dib abs bm-dn">
            <li class="home"><a href="index.htm" tppabs="http://www.tjfozoon.com/" class="db h100"></a></li>
            
            <li><a href="product/list?typeid=0" class="db"><span class="s1">蛋糕系列</span><span class="s2">CAKE</span></a></li>
            <li><a href="product/list?typeid=1"  class="db"><span class="s1">欧风系列</span><span class="s2">EUROPE CAKE</span></a></li>
            <li><a href="product/list?typeid=2"  class="db"><span class="s1">下午茶</span><span class="s2">AFTERNOON TEA</span></a></li>
            <li><a href="product/list?typeid=3" class="db"><span class="s1">礼盒专区</span><span class="s2">GIFT</span></a></li>
            <li><a href="Index.html" tppabs="http://www.tjfozoon.com/Product/Company/Index.html" class="db"><span class="s1">企业专区</span><span class="s2">BUSINESS</span></a></li>
            <li><a href="Login.html-rurl=-UserCenter-Index.html" tppabs="http://www.tjfozoon.com/UserCenter/Index.html" class="db"><span class="s1">会员中心</span><span class="s2">MEMBER</span></a></li>
            <li><a href="Index-2.html" tppabs="http://www.tjfozoon.com/ContactUs/Index.html" class="db"><span class="s1">联系我们</span><span class="s2">CONTACT</span></a></li>
            <li class="login-btn">
                
                <a href="Register.html" tppabs="http://www.tjfozoon.com/Register.html" class="dib">注册</a>
                <a href="Login.html-rurl=-.htm" tppabs="http://www.tjfozoon.com/Login.html?rurl=%2f" class="dib login">登录</a>
                
            </li>
            <div class="clr"></div>
        </ul>
        <div class="fr login-btn bm-dn">
            
            <a href="Register.jsp" tppabs="http://www.tjfozoon.com/Register.html" class="dib">注册</a>
            <a href="Login.html-rurl=-.htm" tppabs="http://www.tjfozoon.com/Login.html?rurl=%2f" class="dib login">登录</a>
            
        </div>
        <a href="javascript:void(0);" class="dn bm-db fr nav-ico h100 mr15"></a>
        <a href="Login.html-rurl=-UserCenter-Index.html" tppabs="http://www.tjfozoon.com/UserCenter/Index.html" class="dn bm-db fr menber-ico h100 mr15"></a>
        <a href="Login.html-rurl=-Shopping-Car.html" tppabs="http://www.tjfozoon.com/Shopping/Car.html" class="dn bm-db fr cart-ico h100 mr15"></a>
        <div class="clr"></div>
    </div>
    <div class="n-header act"></div>

    
    
    <div class="mauto mt45 mb40">
        <h4 class="tac fs36 c9 li38 text-m frumo">CAKE</h4>
        <h6 class="tac fs14 c9 li18 text">蛋糕</h6>
    </div>
    <h1 class="dn sm-db tac phone_title_h1 text_m c9 pt10 pb10 mb30">全部</h1>
    <div class="pro_tab li22 tac mb40 sm-dn">
        <div class="text tac dn sm-db pt20 pb20 pro_tab_div clearfix">请选择分类<a href="###" class="db fr apro_close"><img src="nav_ico_close.png" tppabs="http://www.tjfozoon.com/Web/style/images/nav_ico_close.png" class="img100"></a></div>
        <div class="mauto ptype">
            <a href="List.html" tppabs="http://www.tjfozoon.com/Product/10181/List.html" class="dib fs14 c9 text act">全部</a>
            
                    <a href="List-4.html" tppabs="http://www.tjfozoon.com/Product/10181/10186/List.html" class="dib fs14 c9 text ">经典蛋糕</a>
                
                    <a href="List-5.html" tppabs="http://www.tjfozoon.com/Product/10181/10187/List.html" class="dib fs14 c9 text ">儿童蛋糕</a>
                
                    <a href="List-6.html" tppabs="http://www.tjfozoon.com/Product/10181/10188/List.html" class="dib fs14 c9 text ">慕斯蛋糕</a>
                
                    <a href="List-7.html" tppabs="http://www.tjfozoon.com/Product/10181/10240/List.html" class="dib fs14 c9 text ">祝寿蛋糕</a>
                
                    <a href="List-8.html" tppabs="http://www.tjfozoon.com/Product/10181/10243/List.html" class="dib fs14 c9 text ">婚宴蛋糕</a>
                
        </div>
    </div>
    
    <div class="pro_select mb40">
        <div class="mauto">
            <div class="div_select">
                
                <select class="tac screenselect" onchange="self.location.href=options[selectedIndex].value">
                    <option value="aa">口味</option>
                    <c:forEach items="${flavor}" var="p">
                   		<option value="${ctx }/product/flavor?id=${p.id }">${p.name }</option>
                    </c:forEach>
                </select>
                
                <select class="tac screenselect" onchange="self.location.href=options[selectedIndex].value">
                    <option value="">尺寸</option>
                    <c:forEach items="${size}" var="p"> 
                    	<option value="${ctx }/product/size?id=${p.id }">${p.name}</option>
                   	</c:forEach>
                </select>
                
            </div>
        </div>
    </div>
    
    <div class="product proList">
        <ul class="ma">
            <c:forEach items="${list }" var="p">
                    <li class="wow fadeInUp">
                        <a href="${ctx }/product/show?id=${p.id }&typeid=${p.producttype.id}" class="db rel">
                            <span class="p-img rel mb50">
                                <img src="/0-finalPrj/img/${p.img1}" tppabs="http://www.tjfozoon.com/UserFiles/upload/image/20170416/20170416182950403_t.jpg" class="imgvt imgvt85" /></span>
                            <div class="p-box tac">
                                <h1 class="li28 fs18 c3 text">${p.name }</h1>
                                <h6 class="fs16 li22 c9 text frumo">${p.englishname }&nbsp;</h6>
                            </div>
                            <div class="p-line ma rel"></div>
                        </a>
                        <span class="db a_label abs fs14 cf s_hot tac">热卖</span>                        
                        <a href="View-2.html" tppabs="http://www.tjfozoon.com/Product/10572/View.html" class="a_cart db abs"></a>
                    </li>
             </c:forEach>
       	 </ul>
        <div class="clr"></div>
        <div class="pager pb40 tac"><span>共4页/38条</span><a href="javascript:void(0);">上一页</a> <a href="javascript:void(0);" class="act">1</a> <a href="List.html-page=2&Screen=.htm" tppabs="http://www.tjfozoon.com/Product/10181/List.html?page=2&Screen=">2</a> <a href="List.html-page=3&Screen=.htm" tppabs="http://www.tjfozoon.com/Product/10181/List.html?page=3&Screen=">3</a> <a href="List.html-page=4&Screen=.htm" tppabs="http://www.tjfozoon.com/Product/10181/List.html?page=4&Screen=">4</a> <a href="List.html-page=2&Screen=.htm" tppabs="http://www.tjfozoon.com/Product/10181/List.html?page=2&Screen=">下一页</a> </div>
    </div>
    <script type="text/javascript">
        $('.phone_title_h1').click(function () {
            $('.pro_tab').show();
        })
        $('.apro_close').click(function () {
            $('.pro_tab').hide();
        })

    </script>


    <!-- 底部 -->
    <div class="footer tac pb45">
        <a href="index.jsp" tppabs="http://www.tjfozoon.com/" class="dib f-logo sm-dn">
            <img src="/0-finalPrj/img/footer-logo.png"  class="img100" /></a>
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





