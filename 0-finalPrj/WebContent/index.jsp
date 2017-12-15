<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" type="text/css" href="css/reset.css" tppabs="http://www.tjfozoon.com/Web/style/css/reset.css">
    <link rel="stylesheet" type="text/css" href="css/jquery.bxslider.min.css" tppabs="http://www.tjfozoon.com/Web/style/css/jquery.bxslider.min.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css" tppabs="http://www.tjfozoon.com/Web/style/css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/layout.css" tppabs="http://www.tjfozoon.com/Web/style/css/layout.css">
    <link rel="stylesheet" type="text/css" href="css/dll.css" tppabs="http://www.tjfozoon.com/Web/style/css/dll.css">
    <link rel="stylesheet" type="text/css" href="css/banner_css.css" tppabs="http://www.tjfozoon.com/Web/style/css/banner_css.css">
    <link rel="stylesheet" type="text/css" href="css/media.css" tppabs="http://www.tjfozoon.com/Web/style/css/media.css">
    <script type="text/javascript" src="js/jquery-1.8.3.min.js" tppabs="http://www.tjfozoon.com/Web/style/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery.bxslider.min.js" tppabs="http://www.tjfozoon.com/Web/style/js/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="js/rem.js" tppabs="http://www.tjfozoon.com/Web/style/js/rem.js"></script>
    <script type="text/javascript" src="js/main.js" tppabs="http://www.tjfozoon.com/Web/style/js/main.js"></script>
    <script type="text/javascript" src="js/wow.min.js" tppabs="http://www.tjfozoon.com/Web/style/js/wow.min.js"></script>

    <link href="css/sweet-alert.css" tppabs="http://www.tjfozoon.com/Web/style/lib/sweet-alert.css" rel="stylesheet" type="text/css" />
    <script src="js/sweet-alert.min.js" tppabs="http://www.tjfozoon.com/Web/style/lib/sweet-alert.min.js" type="text/javascript"></script>

    
    <title>法颂蛋糕官网|FOZOON—天津生日蛋糕网上订购新鲜配送</title>
    <script type="text/javascript" src="js/jquery.stellar.min.js" tppabs="http://www.tjfozoon.com/Web/style/js/jquery.stellar.min.js"></script>

    <meta name="Keywords" content="天津蛋糕，天津生日蛋糕，预订生日蛋糕，蛋糕配送，天津蛋糕配送，法颂，法颂蛋糕，动物奶油蛋糕，天津婚庆蛋糕、天津寿宴蛋糕、天津定制宴会蛋糕、诺心，诺心蛋糕，21cake，21cake蛋糕，好利来，好利来蛋糕，津乐园，巴黎贝甜，多乐之日，" />
    <meta name="Description" content="天津生日蛋糕订购平台，网上预订当日配送，网上可选购甜品、礼盒、马卡龙、儿童蛋糕、慕斯蛋糕、乳脂蛋糕、婚庆蛋糕、冰淇淋蛋糕、蛋黄酥等产品。生日蛋糕仅限天津市部分区域配送，礼盒及部分甜品类产品全国免费配送。" />
</head>
<body>
    
    <!-- 头部置顶 -->
    <div class="header w100 tac rel bgcf act">
        <a class="logo db fl mt25" href="index.htm" tppabs="http://www.tjfozoon.com/">
            <img src="img/logo.png" tppabs="http://www.tjfozoon.com/Web/style/images/logo.png" class="img100"></a>
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
            
            <a href="${ctx }/Register.jsp" class="dib">注册</a>
            <a href="${ctx }/Login.jsp" class="dib login">登录</a>
            
        </div>
        <a href="javascript:void(0);" class="dn bm-db fr nav-ico h100 mr15"></a>
        <a href="Login.html-rurl=-UserCenter-Index.html" tppabs="http://www.tjfozoon.com/UserCenter/Index.html" class="dn bm-db fr menber-ico h100 mr15"></a>
        <a href="Login.html-rurl=-Shopping-Car.html" tppabs="http://www.tjfozoon.com/Shopping/Car.html" class="dn bm-db fr cart-ico h100 mr15"></a>
        <div class="clr"></div>
    </div>
    <div class="n-header act"></div>

    
    <!-- 轮 播 图 -->
    <div class="banner w100 act">
        <ul class="bxslider">
            
                    <li style="background-image: url(img/20171012143339151.jpg)/*tpa=http://www.tjfozoon.com/UserFiles/upload/image/20171012/20171012143339151.jpg*/" data-stellar-background-ratio="0.5" class="activebg"><a href="List-1.html" tppabs="http://www.tjfozoon.com/Product/10183/List.html" target="_blank" class="db h100"></a></li>
                
                    <li style="background-image: url(img/20170830115538821.jpg)/*tpa=http://www.tjfozoon.com/UserFiles/upload/image/20170830/20170830115538821.jpg*/" data-stellar-background-ratio="0.5" class="activebg"><a href="Index.html" tppabs="http://www.tjfozoon.com/Product/Company/Index.html" target="_blank" class="db h100"></a></li>
                
                    <li style="background-image: url(img/20161223160336811.jpg)/*tpa=http://www.tjfozoon.com/UserFiles/upload/image/20161223/20161223160336811.jpg*/" data-stellar-background-ratio="0.5" class="activebg"><a href="List-1.html" tppabs="http://www.tjfozoon.com/Product/10183/List.html" target="_blank" class="db h100"></a></li>
                
        </ul>
    </div>
    <div class="n-banner"></div>


    <!-- 明 星 产 品 -->
    <div class="pro-star w100 rel">
        <div class="title tac pt50 pb55">
            <h1 class="mc fs24 li32 mb5 text-b">明 星 产 品</h1>
            <h6 class="fm mc li18 text">HOT PRODUCT</h6>
        </div>
        <ul>
            
                    <li>
                        <div class="s-box h100 tac rel">
                            <a href="List-3.html" tppabs="http://www.tjfozoon.com/Product/10182/List.html" class="s-logo db mb35 pt80">
                                <img src="img/20170406154635151.png" tppabs="http://www.tjfozoon.com/UserFiles/upload/image/20170406/20170406154635151.png" class="imgam"></a>
                            <p class="fs14 cf li24 mb20 s-text ovh3 pl35 pr35">
                                法颂视每一款甜品均为”稀世珍宝” ，制作过程严谨苛求，<br/>用最诚挚的态度为每一位客户打造他的最爱
                            </p>
                            <a href="List-3.html" tppabs="http://www.tjfozoon.com/Product/10182/List.html" class="dib more tac">
                                <i class="fs12 cf li16 fm">MORE</i>
                                <b class="m-line ma"><em class="db h100"></em></b>
                            </a>
                        </div>
                        <p class="s-img abs w100" style="background-image: url(img/20161223164618731.jpg)/*tpa=http://www.tjfozoon.com/UserFiles/upload/image/20161223/20161223164618731.jpg*/"></p>
                        <div class="s-bg abs w100 h100"></div>
                    </li>
                
                    <li>
                        <div class="s-box h100 tac rel">
                            <a href="index.htm" tppabs="http://www.tjfozoon.com/Product/11963/View.html" class="s-logo db mb35 pt80">
                                <img src="img/20161223164650425.png" tppabs="http://www.tjfozoon.com/UserFiles/upload/image/20161223/20161223164650425.png" class="imgam"></a>
                            <p class="fs14 cf li24 mb20 s-text ovh3 pl35 pr35">
                                秉承传统的技术，延用正宗的法式私家配方<br/>将每一种有故事的经典法式甜点呈现给每一位热爱生活，懂得享受，追求完美的人们
                            </p>
                            <a href="index.jsp" tppabs="http://www.tjfozoon.com/Product/11963/View.html" class="dib more tac">
                                <i class="fs12 cf li16 fm">MORE</i>
                                <b class="m-line ma"><em class="db h100"></em></b>
                            </a>
                        </div>
                        <p class="s-img abs w100" style="background-image: url(img/20161223164645024.jpg)/*tpa=http://www.tjfozoon.com/UserFiles/upload/image/20161223/20161223164645024.jpg*/"></p>
                        <div class="s-bg abs w100 h100"></div>
                    </li>
                
            <div class="clr"></div>
        </ul>

    </div>

    <!-- 法 颂 产 品 -->
    <div class="product w100 pb50">
        <div class="title tac pt50 pb60">
            <h1 class="mc fs24 li32 mb5 text-b">法 颂 产 品</h1>
            <h6 class="fm mc li18 text">OUR PRODUCT</h6>
        </div>
        <ul class="ma">
            
                    <li class="wow fadeInUp" data-wow-delay="0s">
                        <div class="db pt50 rel">
                            <span class="p-img rel mb50">
                                <img src="img/20161226091500458.jpg" tppabs="http://www.tjfozoon.com/UserFiles/upload/image/20161226/20161226091500458.jpg" class="imgvt" /></span>
                            <div class="p-box tac">
                                <h1 class="li26 fs16 cking text">蛋糕</h1>
                                <h6 class="fs16 li20 cking text">-Cake-</h6>
                            </div>
                            <div class="p-line ma rel"></div>
                            <div class="p-bg w100 h100 abs">
                                <span class="p-img mb50 pt50 tac">
                                    <b class="p-b-img db mt35 rel">
                                        <img src="img/20161226091516629.png" tppabs="http://www.tjfozoon.com/UserFiles/upload/image/20161226/20161226091516629.png" class="imgvt" /></b>
                                    <p class="fs14 li24 cf pl10 pr10 ovh6 text">
                                        秉承传统的技术<br/>延用正宗的法式私家配方<br/>将每一种有故事的经典法式甜点呈现给每一位<br/>热爱生活，懂得享受，追求完美的人们
                                    </p>
                                </span>
                                <div class="p-box tac">
                                    <h1 class="li26 fs16 cf text">蛋糕</h1>
                                    <h6 class="fs16 li20 cf text">-Cake-</h6>
                                </div>
                                <a href="List.html" tppabs="http://www.tjfozoon.com/Product/10181/List.html" class="z9 abs w100 h100 l0 t0"></a>
                            </div>
                            <a href="List.html" tppabs="http://www.tjfozoon.com/Product/10181/List.html" class="db sm-dn z9 abs w100 h100 l0 t0"></a>
                        </div>
                    </li>
                
                    <li class="wow fadeInUp" data-wow-delay="0.2s">
                        <div class="db pt50 rel">
                            <span class="p-img rel mb50">
                                <img src="img/20171118170316185.jpg" tppabs="http://www.tjfozoon.com/UserFiles/upload/image/20171118/20171118170316185.jpg" class="imgvt" /></span>
                            <div class="p-box tac">
                                <h1 class="li26 fs16 cking text">慕斯蛋糕</h1>
                                <h6 class="fs16 li20 cking text">-Mousse Cake-</h6>
                            </div>
                            <div class="p-line ma rel"></div>
                            <div class="p-bg w100 h100 abs">
                                <span class="p-img mb50 pt50 tac">
                                    <b class="p-b-img db mt35 rel">
                                        <img src="img/20161226091919237.png" tppabs="http://www.tjfozoon.com/UserFiles/upload/image/20161226/20161226091919237.png" class="imgvt" /></b>
                                    <p class="fs14 li24 cf pl10 pr10 ovh6 text">
                                        秉承传统的技术<br/>延用正宗的法式私家配方<br/>将每一种有故事的经典法式甜点呈现给每一位<br/>热爱生活，懂得享受，追求完美的人们
                                    </p>
                                </span>
                                <div class="p-box tac">
                                    <h1 class="li26 fs16 cf text">慕斯蛋糕</h1>
                                    <h6 class="fs16 li20 cf text">-Mousse Cake-</h6>
                                </div>
                                <a href="List-1.html" tppabs="http://www.tjfozoon.com/Product/10183/List.html" class="z9 abs w100 h100 l0 t0"></a>
                            </div>
                            <a href="List-1.html" tppabs="http://www.tjfozoon.com/Product/10183/List.html" class="db sm-dn z9 abs w100 h100 l0 t0"></a>
                        </div>
                    </li>
                
                    <li class="wow fadeInUp" data-wow-delay="0.4s">
                        <div class="db pt50 rel">
                            <span class="p-img rel mb50">
                                <img src="img/20171118170838326.jpg" tppabs="http://www.tjfozoon.com/UserFiles/upload/image/20171118/20171118170838326.jpg" class="imgvt" /></span>
                            <div class="p-box tac">
                                <h1 class="li26 fs16 cking text">儿童款</h1>
                                <h6 class="fs16 li20 cking text">-Kid-</h6>
                            </div>
                            <div class="p-line ma rel"></div>
                            <div class="p-bg w100 h100 abs">
                                <span class="p-img mb50 pt50 tac">
                                    <b class="p-b-img db mt35 rel">
                                        <img src="img/20161226091742112.png" tppabs="http://www.tjfozoon.com/UserFiles/upload/image/20161226/20161226091742112.png" class="imgvt" /></b>
                                    <p class="fs14 li24 cf pl10 pr10 ovh6 text">
                                        秉承传统的技术<br/>延用正宗的法式私家配方<br/>将每一种有故事的经典法式甜点呈现给每一位<br/>热爱生活，懂得享受，追求完美的人们
                                    </p>
                                </span>
                                <div class="p-box tac">
                                    <h1 class="li26 fs16 cf text">儿童款</h1>
                                    <h6 class="fs16 li20 cf text">-Kid-</h6>
                                </div>
                                <a href="List-3.html" tppabs="http://www.tjfozoon.com/Product/10182/List.html" class="z9 abs w100 h100 l0 t0"></a>
                            </div>
                            <a href="List-3.html" tppabs="http://www.tjfozoon.com/Product/10182/List.html" class="db sm-dn z9 abs w100 h100 l0 t0"></a>
                        </div>
                    </li>
                
                    <li class="wow fadeInUp" data-wow-delay="0.6s">
                        <div class="db pt50 rel">
                            <span class="p-img rel mb50">
                                <img src="img/20171118171117197.jpg" tppabs="http://www.tjfozoon.com/UserFiles/upload/image/20171118/20171118171117197.jpg" class="imgvt" /></span>
                            <div class="p-box tac">
                                <h1 class="li26 fs16 cking text">礼盒</h1>
                                <h6 class="fs16 li20 cking text">-Gift-</h6>
                            </div>
                            <div class="p-line ma rel"></div>
                            <div class="p-bg w100 h100 abs">
                                <span class="p-img mb50 pt50 tac">
                                    <b class="p-b-img db mt35 rel">
                                        <img src="img/20161226091855676.png" tppabs="http://www.tjfozoon.com/UserFiles/upload/image/20161226/20161226091855676.png" class="imgvt" /></b>
                                    <p class="fs14 li24 cf pl10 pr10 ovh6 text">
                                        秉承传统的技术<br/>延用正宗的法式私家配方<br/>将每一种有故事的经典法式甜点呈现给每一位<br/>热爱生活，懂得享受，追求完美的人们
                                    </p>
                                </span>
                                <div class="p-box tac">
                                    <h1 class="li26 fs16 cf text">礼盒</h1>
                                    <h6 class="fs16 li20 cf text">-Gift-</h6>
                                </div>
                                <a href="index.jsp" tppabs="http://www.tjfozoon.com/Product/13463/View.html" class="z9 abs w100 h100 l0 t0"></a>
                            </div>
                            <a href="index.jsp" tppabs="http://www.tjfozoon.com/Product/13463/View.html" class="db sm-dn z9 abs w100 h100 l0 t0"></a>
                        </div>
                    </li>
                
        </ul>
        <div class="clr"></div>
    </div>

    <!-- 品 牌 资 讯 -->
    <div class="information pt80 pb55 tac">
        <ul class="ma">
            <li class="one info_li">
                <div class="info_b pl20 pr20">
                    <span class="p-logo db rel">
                        <img src="pp01.png" tppabs="http://www.tjfozoon.com/Web/style/images/pp01.png" class="imgvt" /></span>
                    <div class="title tac pt10 mb40">
                        <h1 class="cf fs24 li32 mb5 text-b">品 牌 资 讯</h1>
                        <h6 class="fm cf li18 text">NEWS CENTER</h6>
                    </div>
                    <ul class="slider">
                        
                                <li>
                                    <a href="Index-3.html" tppabs="http://www.tjfozoon.com/News/10239/Index.html" class="db">
                                        <h1 class="h_title dib cf fs18 li28 mb5 ovh text-b">好消息   新增滨海新区配送服务</h1>
                                    </a>
                                </li>
                            
                                <li>
                                    <a href="Index-4.html" tppabs="http://www.tjfozoon.com/News/10252/Index.html" class="db">
                                        <h1 class="h_title dib cf fs18 li28 mb5 ovh text-b">日前，法颂与企业合作为孩子们举办【万圣节】联欢活动</h1>
                                    </a>
                                </li>
                            
                    </ul>
                    <ul class="slider01">
                        
                                <li>
                                    <a href="Index-3.html" tppabs="http://www.tjfozoon.com/News/10239/Index.html" class="db">
                                        <h4 class="fs12 cf li16 text mb15">2017.07.18</h4>
                                    </a>
                                </li>
                            
                                <li>
                                    <a href="Index-4.html" tppabs="http://www.tjfozoon.com/News/10252/Index.html" class="db">
                                        <h4 class="fs12 cf li16 text mb15">2017.10.31</h4>
                                    </a>
                                </li>
                            
                    </ul>
                    <ul class="slider02">
                        
                                <li>
                                    <a href="Index-3.html" tppabs="http://www.tjfozoon.com/News/10239/Index.html" class="db">
                                        <div class="cf fs12 li22 text ovh2">
                                            现新增加配送区域：<br/>滨海新区法颂泰达店 距店5公里内提供免费配送服务；
                                        </div>
                                    </a>
                                </li>
                            
                                <li>
                                    <a href="Index-4.html" tppabs="http://www.tjfozoon.com/News/10252/Index.html" class="db">
                                        <div class="cf fs12 li22 text ovh2">
                                            
                                        </div>
                                    </a>
                                </li>
                            
                    </ul>
                </div>
                <div class="i-bg w100 h100 abs"></div>
            </li>
            <li class="two info_li">
                <div class="info_b pl20 pr20">
                    <span class="p-logo db rel">
                        <img src="img/pp02.png" tppabs="http://www.tjfozoon.com/Web/style/images/pp02.png" class="imgvt" /></span>
                    <div class="title tac pt10 mb40">
                        <h1 class="cf fs24 li32 mb5 text-b">配 送 说 明</h1>
                        <h6 class="fm cf li18 text">DELIVERY NOTE</h6>
                    </div>
                    <div class="cf fs16 li30 text">
                        一次性消费满200元<br/>支持天津市区外环线内、外环南路至南开大学津南校区附近及滨海新区泰达店5公里内免费配送服务；<br/>不满200元请选择到店自提。
                    </div>
                </div>
                <div class="i-bg w100 h100 abs"></div>
            </li>
            <div class="clr"></div>
        </ul>
        <div class="clr"></div>
    </div>




    <script type="text/javascript">
        $(function () {
            $('.product li').click(function(){
                if($(window).width()>767){
                    $(this).find('.p-bg').show();
                    $(this).find('.p-bg a').show();
                }
            })

            var bxslider = $('.bxslider').bxSlider({
                auto: true,
                autoHover: true,
                useCSS: false,
                controls: false
            });
            var slider = $('.slider').bxSlider({
                mode: 'vertical',
                auto: true,
                autoHover: false,
                useCSS: false,
                pager: false
            });
            var slider01 = $('.slider01').bxSlider({
                mode: 'fade',
                auto: true,
                autoHover: false,
                useCSS: false,
                pager: false
            });
            var slider01 = $('.slider02').bxSlider({
                mode: 'vertical',
                auto: true,
                autoHover: false,
                useCSS: false,
                pager: false
            });
            $.stellar({ horizontalScrolling: false, verticalOffset: 40 });
            var wow = new WOW({
                boxClass: 'wow',
                animateClass: 'animated',
                offset: 0,
                mobile: true,
                live: true
            });
            wow.init();
        })
    </script>


    <!-- 底部 -->
    <div class="footer tac pb45">
        <a href="index-1.jsp" tppabs="http://www.tjfozoon.com/" class="dib f-logo sm-dn">
            <img src="img/footer-logo.png" tppabs="img/footer-logo.png" class="img100" /></a>
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
                <img src="img/ewm.jpg" tppabs="http://www.tjfozoon.com/Web/style/images/ewm.jpg" /></span></li>
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





