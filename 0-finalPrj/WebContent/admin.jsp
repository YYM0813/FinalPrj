<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0050)http://www.tjfozoon.com/UserCenter/Info/Index.html -->
<html lang="en" style="font-size: 160px;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
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

    
    <title>个人信息 - 会员中心 - 法颂蛋糕官网|FOZOON</title>
    <link href="/0-finalPrj/css/mobiscroll.custom-2.17.0.min.css" rel="stylesheet">
    <script src="/0-finalPrj/js/mobiscroll.custom-2.17.0.min.js"></script>
    <link href="/0-finalPrj/css/uploader.css" rel="stylesheet">
    <script src="/0-finalPrj/js/webuploader.min.js" type="text/javascript"></script>
    <script src="/0-finalPrj/js/uploader.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            //初始化上传控件
            $(".upload-img").InitUploader({ btntext: "编辑头像", action: "UpUserPic" });
        });
    </script>
    <style>
        .update-phone{
            width: 44px;
            height: 20px;
            border-radius: 4px;
            background: #fff;
            color: #ccc;
            right: 10px;
            line-height: 20px;
            text-align: center;
            top:50%;
            margin-top:-10px;
            cursor:pointer;
        }
        @media (max-width: 767px){
             .info .i-r-right .inp.disabled .inptext.phone-inp{
                 width:71%;
                 padding-right:9%;
             }
            .update-phone {
                width:12%;
                font-size: .3rem;
                line-height:.5rem;
                height:.5rem;
                margin-top:-0.25rem;
                right:1%;
            }
            .login1 .l_left .yzm{
                width:27.6%;
                height:.72rem;
                line-height:.72rem;
                font-size: .22rem;
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
            
            
            <div class="clr"></div>
        </ul>
        <div class="fr login-btn bm-dn">
            <a href="http://www.tjfozoon.com/UserCenter/Index.html" class="pr10" style="background-color: #FFF; color: #b69b65;">${loginuser.name}</a>
            <a href="http://www.tjfozoon.com/LoginOut.html" class="pr10" style="background-color: #FFF; color: #b69b65;">退出</a>
        </div>
        <a href="javascript:void(0);" class="dn bm-db fr nav-ico h100 mr15"></a>
        <a href="http://www.tjfozoon.com/UserCenter/Index.html" class="dn bm-db fr menber-ico h100 mr15"></a>
        <a href="http://www.tjfozoon.com/Shopping/Car.html" class="dn bm-db fr cart-ico h100 mr15"></a>
        <div class="clr"></div>
    </div>
    <div class="n-header act"></div>

    
    
    <!--会员中心-->
    <div class="mauto mt45">
        <h4 class="tac fs36 c9 li38 text-m frumo">Administer</h4>
        <h6 class="tac fs14 c9 li18 text text-b">后台管理</h6>
        <div class="mt45 b_t_border menber pt45 pb60"></div>
    </div>   
    <div style="width:300px;height:150px;margin-left:580px">
	    <table align="center" border="1">
	    	<td><a href="/0-finalPrj/usershow"><h2>用户管理</h2></a></td>
	    	<td><a href="/0-finalPrj/productadmin.jsp"><h2>产品管理</h2></a></td>
	    	<td><a href="/0-finalPrj/orderadmin"><h2>订单管理</h2></a></td>
	    </table>
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
            <a href="http://www.tjfozoon.com/UserCenter/Info/Index.html###" class="qq"></a>
            <a href="http://www.tjfozoon.com/UserCenter/Info/Index.html###" class="wb"></a>
            <a href="http://www.tjfozoon.com/UserCenter/Info/Index.html###" class="wx"></a>
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