<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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

    
    <title>填写订单信息 -
        法颂蛋糕官网|FOZOON—天津生日蛋糕网上订购新鲜配送</title>
    <script src="/0-finalPrj/js/product.js"></script>
    
    <link href="/0-finalPrj/cxs/mobiscroll_date.css" rel="stylesheet">
    <link href="/0-finalPrj/css/mobiscroll.css" rel="stylesheet">
    <script src="/0-finalPrj/js/mobiscroll_date.js" charset="gb2312"></script>
    <script src="/0-finalPrj/js/mobiscroll.js"></script>
    <script>
    function commit() {
    	var name = $("#order_name").val(); 
    	var tel =  $("#order_tel").val(); 
    	var address =  $("#order_address").val(); 
    	var param={};
  	  	param.name = name;
  	  	param.tel = tel;
  	  	param.address = address;
    swal({
        title: "确定提交?",
        text: "您确定提交订单？",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: "提交",
        cancelButtonText: "取消"
    },
    function () {
        $.ajax({
            url: "http://localhost:8080/0-finalPrj/submit",
            type: "POST",
            cache: false,
            dataType: "json",
            data: param,
            success: function (ReturnData) {
                if (ReturnData.result == "success") {
                    window.location.href = "http://localhost:8080/0-finalPrj/pay.jsp";
                }
                else {
                    swal("订单提交失败！", ReturnData, "warning");
                }
            }
        });
    });
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

    
    <form name="aspnetForm" method="post" action="http://www.tjfozoon.com/Shopping/Confirm.html" id="aspnetForm">
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
                <a href="javascript:void(0);" class="dib act">填写订单信息<em></em></a>
                <a href="javascript:void(0);" class="dib">完成订单<em></em></a>
            </div>

            <!-- 面包屑 -->
            <div class="qr-order bgmc">
                <div class="pl30 pr30 qr-o pb30">
                    <h2 class="fs16 c3 li40 pt15 pb15 sm-dn d-d">物流方式</h2>
                    <dl class="gr sel-logistics">
                        <dd class="fs14 li40 fl c6 pt15 pb15 sm-tar text input_div mr15"><a href="javascript:void(0);" class="dib pl60 pr60 fs14 gra-way text">需要配送</a></dd>
                        
                        <dd class="fs14 li40 fl c6 pt15 pb15 sm-tar text input_div"><a href="javascript:void(0);" class="dib pl60 pr60 fs14 gra-way text">门店自取</a></dd>
                        
                        <div class="clr"></div>
                    </dl>
                   
                    <div class="dn logistics">
                        <h2 class="fs16 c3 li40 pt15 pb15 sm-dn d-d">选择收货地址</h2>
                        <dl class="address mb15">
                            <c:forEach items="${addresslist}" var="p">
                            <dd class="fs14 li22 a04-d rel uaddress-dd" uaid="10940" style="cursor: pointer;">
                                <div class="dn sm-db fl a01-d text tac">收货地址</div>
                                <div class="fl a03-d w100">
                                    <h1 class="li34 fs18 pt5 pb5 text"><span class="dn sm-inline" id="order_name">收货人：</span>${p.name}<span class="dn sm-inline ml30"></span></h1>
                                    <p class="text sm-dn" id="order_tel">${p.tel }</p>
                                    <p class="text ovh2"><span class="dn sm-inline" id="order_address">收货地址：</span><span class="dn sm-inline">${p.address}</span></p>
                                    <p class="ovh2 text sm-dn">${p.address}</p>
                                </div>
                            </dd>
                            </c:forEach>
                            <dd class="add">
                                <a href="http://localhost:8080/0-finalPrj/add.jsp" class="a-add db">
                                    <p class="li24 tac fs14">添加新地址</p>
                                </a>
                            </dd>
                            <div class="clr"></div>
                        </dl>
                    </div>
                    
                    <dl class="gr syyhq">
                        <dt class="fs16 c3 li40 pt15 fl text">备注留言</dt>
                        <dd class="fs14 li40 fl pt15 pb15 input_div">
                            <input name="ctl00$Content1$txtMessage" type="text" id="ctl00_Content1_txtMessage" class="inp w100">
                        </dd>
                        <div class="clr"></div>
                    </dl>
                    <dl class="yhq">
                      <c:forEach items="${orderlist }" var="p">
                        <dd class="fs14 li50 c6">
                            <span class="dib s-img">
                                <img src="/0-finalPrj/img/${p.product.img1}" class="img100"></span>
                            <h1 class="dib s-text ovh fs14 c6 li50 vt text"><span>${p.product.name}<span class="db ovh">${p.flavor.name},${p.size.name}</span></span></h1>

                            <p class="dib num vt tac fs16 sm-fl text sm-tar">${p.product.price }<span class="sm-dn">元/个</span>x<span class="sm-db">${p.count}</span></p>
                            <p class="dib price khaki vt tac fs16 sm-dn tar"><span class="sm-dn" name="totalprice">${p.product.price*p.count }元</span></p>
                        </dd>
                        </c:forEach>
                        <dd class="dd-text">
                            <p class="fs12 li24 text sm-tal">配件说明：<span class="sx-db">10人用餐具+餐刀+生日帽</span></p>
                        </dd>                        
                <div class="pl30 pr70 qr-o pb45 tar fs14 li26 sm-w92">
                    <p class="sm-tal text sm-mt15">
                    <p class="li38 mt15 sm-tal text qr-o-p">
                        订单金额：<span class="qr-o-s dib sm-fr sm-tar"><i class="fs30 khaki text_m" ></i><span class="sm-dn" name="totalprice2">元</span></span>
                    </p>
                </div>
            </div>
            <div class="settlement pl30 li54 fs14 mt20 bgmc mb20">
                <div class="fr li54 st-r">
                    <a onclick=" commit(); " id="ctl00_Content1_btnAddOrder" class="dib ml25 g-sett cf fs22 tac vt text" >确认并提交订单</a>
                </div>
                <div class="clr"></div>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        function getDate(strDate) {
            var date = eval('new Date(' + strDate.replace(/\d+(?=-[^-]+$)/,
             function (a) { return parseInt(a, 10) - 1; }).match(/\d+/g) + ')');
            return date;
        }
        function p(s) {
            return s < 10 ? '0' + s : s;
        }
        function mobiscroll_select1(valueText, inst) {
            var txttime1 = $("#txttime1").val();
            $("#txttime1").empty();
            var currentdate = (new Date()).getFullYear() + "-" + p((new Date()).getMonth() + 1) + "-" + p((new Date()).getDate());
            var currentHours = (new Date()).getHours();
            if (currentdate == valueText) {
                var xx = currentHours - 6;
                for (var i = xx; i < 10; i++) {
                    $("#txttime1").append("<option value='" + (10 + i) + ":00-" + (10 + i + 1) + ":00'>" + (10 + i) + ":00-" + (10 + i + 1) + ":00</option>");
                }
                $("#txttime1").prepend("<option value='0'>选择时间区域</option>")
            }
            else {
                for (var i = 0; i < 10; i++) {
                    $("#txttime1").append("<option value='" + (10 + i) + ":00-" + (10 + i + 1) + ":00'>" + (10 + i) + ":00-" + (10 + i + 1) + ":00</option>");
                }
                $("#txttime1").prepend("<option value='0'>选择时间区域</option>")
            }
            $("#txttime1").val(txttime1);
            //提前3天双倍积分
            var total_all_price1 = parseInt($("#total_all_price1").html());
            var txtdata = getDate(valueText + ' 23:59:59');
            var NowTime = new Date();
            if (Math.floor((txtdata.getTime() - NowTime.getTime()) / 1000 / 60 / 60 / 24) >= 2) {
                if (total_all_price1 >= 1) {
                    $("#add-integral").html(total_all_price1 * 2);
                } else {
                    $("#add-integral").html("0");
                }
                $("#integralmultiple").val("2");
            }
            else {
                $("#add-integral").html(total_all_price1);
            }
        }
        function mobiscroll_select2(valueText, inst) {
            var txttime2 = $("#txttime2").val();
            $("#txttime2").empty();
            var currentdate = (new Date()).getFullYear() + "-" + p((new Date()).getMonth() + 1) + "-" + p((new Date()).getDate());
            var currentHours = (new Date()).getHours();
            if (currentdate == valueText) {
                $("#txttime2").append("<option value='14:00-16:00'>14:00-16:00</option>");
                $("#txttime2").prepend("<option value='0'>选择时间区域</option>");
            }
            else {
                $("#txttime2").append("<option value='10:00-12:00'>10:00-12:00</option>");
                $("#txttime2").append("<option value='14:00-16:00'>14:00-16:00</option>");
                $("#txttime2").prepend("<option value='0'>选择时间区域</option>");
            }
            $("#txttime2").val(txttime1);
            //提前3天双倍积分
            var total_all_price1 = parseInt($("#total_all_price1").html());
            var txtdata = getDate(valueText + ' 23:59:59');
            var NowTime = new Date();
            if (Math.floor((txtdata.getTime() - NowTime.getTime()) / 1000 / 60 / 60 / 24) >= 2) {
                if (total_all_price1 >= 1) {
                    $("#add-integral").html(total_all_price1 * 2);
                } else {
                    $("#add-integral").html("0");
                }
                $("#integralmultiple").val("2");
            }
            else {
                $("#add-integral").html(total_all_price1);
            }
        }
        function setday1() {
            if ((new Date()).getHours() >= 16) {
                return (new Date()).getDate() + 1;
            }
            else {
                return (new Date()).getDate();
            }
        }
        function setday2() {
            if ((new Date()).getHours() >= 9) {
                return (new Date()).getDate() + 1;
            }
            else {
                return (new Date()).getDate();
            }
        }
        $(function () {

            $('#txtdate1').mobiscroll().date({
                theme: 'android-ics light',
                display: 'modal', //显示方式 
                mode: 'scroller', //日期选择模式
                dateFormat: 'yyyy-mm-dd',
                lang: 'zh',
                onSelect: mobiscroll_select1,//点击确定按钮，触发事件。
                startYear: (new Date()).getFullYear(), //开始年份
                startMonth: (new Date()).getMonth(), // 开始月份  
                startDay: setday1(),  // 开始日
                endYear: (new Date()).getFullYear() + 1 //结束年份
            });
            $('#txtdate2').mobiscroll().date({
                theme: 'android-ics light',
                display: 'modal', //显示方式 
                mode: 'scroller', //日期选择模式
                dateFormat: 'yyyy-mm-dd',
                lang: 'zh',
                onSelect: mobiscroll_select2,//点击确定按钮，触发事件。
                startYear: (new Date()).getFullYear(), //开始年份
                startMonth: (new Date()).getMonth(), // 开始月份  
                startDay: setday2(),  // 开始日
                endYear: (new Date()).getFullYear() + 1 //结束年份
            });
        });
    </script>
    <script>
        $(function () {
            $(".uaddress-dd").click(function () {
                $(".uaddress-dd").removeClass("act");
                $(this).addClass("act");
                var uaid = $(this).attr("uaid");
                $("#uaddressid").val(uaid);

                $(".uztd").hide();
                $(".uztd dd").removeClass("act");
            });
            //初始化物流
            var logistics = $("#logistics").val();
            $(".sel-logistics dd").each(function () {
                if (($(this).index() + 1) == logistics) {
                    $(".sel-logistics dd a").removeClass("act");
                    $(this).children("a").addClass("act");
                    $(".logistics").addClass("dn");
                    $(".logistics").eq($(this).index()).removeClass("dn");
                }
            });
            //初始化自提
            var usincesomeid = $("#usincesomeid").val();
            if (usincesomeid != 0) {
                $(".frame-scroll ul li").each(function () {
                    var usid = $(this).attr("usid");
                    if ($(this).attr("usid") == usincesomeid) {
                        $(this).addClass("act");
                    }
                });
                var usstr = $(".frame-scroll ul li.act a").html();
                $(".ztd-dd").show();
                $(".ztd-dd").attr("usid", usincesomeid);
                $(".ztd-address").html(usstr);
            }
            //初始化配送
            var uaddressid = $("#uaddressid").val();
            $(".uaddress-dd").each(function () {
                if ($(this).attr("uaid") == uaddressid) {
                    $(".uaddress-dd").removeClass("act");
                    $(this).addClass("act");
                }
            });
            //物流选择
            $(".sel-logistics dd").click(function () {
                $(".sel-logistics dd a").removeClass("act");
                $(this).children("a").addClass("act");
                $(".logistics").addClass("dn");
                $(".logistics").eq($(this).index()).removeClass("dn");
                //物流赋值
                $("#logistics").val($(this).index() + 1);
            });
            //初始化抵扣积分
            $("#integral_price").val("0");
            $("#integral_pay").val("0");

            $("#integral_pay").keyup(function () {
                if ($(this).val() != "" && !isNaN($(this).val())) {
                    var _integral_pay = parseInt($(this).val());
                    var _integral_num = parseInt($("#integral_num").val());

                    var ispay_integral = parseFloat($("#ispay_integral").val()).toFixed(2) * 10;
                    ispay_integral = parseInt(ispay_integral);
                    if (ispay_integral < parseFloat($("#ispay_integral").val()).toFixed(2) * 10) {
                        ispay_integral += 1;
                    }
                    if (_integral_num >= 500) {
                        if (_integral_num < _integral_pay) { _integral_pay = _integral_num; }
                        if (ispay_integral < _integral_pay) { _integral_pay = ispay_integral; }
                        var _integral_price = (parseFloat(_integral_pay) / 10);
                        $("#integral_price").val(_integral_price);
                        $(this).val(_integral_pay);
                    }
                    else {
                        $(this).val("0");
                        $("#integral_price").val("0");
                    }
                }
                else {
                    $(this).val("0");
                    $("#integral_price").val("0");
                }
                SetTotalAllPrice();
            });
        });
        
    
        function check() {

            var logistics = $("#logistics").val();
            if (logistics == 0) {
                swal("下单失败", "请选择物流方式！", "warning");
                return false;
            }

            var uaddressid = $("#uaddressid").val();
            var usincesomeid = $("#usincesomeid").val();
            if (logistics == "1" && usincesomeid == "0") {
                swal("下单失败", "请选择自提点！", "warning");
                return false;
            }
            if (logistics == "2" && uaddressid == "0") {
                swal("下单失败", "请选择收货地址！", "warning");
                return false;
            }
            if (logistics == "1") {
                var txtdate1 = $("#txtdate1").val();
                if (txtdate1 == "") {
                    swal("下单失败", "请选择自提日期！", "warning");
                    return false;
                }
                var txttime1 = $("#txttime1").val();
                if (txttime1 == "0") {
                    swal("下单失败", "请选择自提时间区域！", "warning");
                    return false;
                }
            }
            if (logistics == "2") {
                var txtdate2 = $("#txtdate2").val();
                if (txtdate2 == "") {
                    swal("下单失败", "请选择配送日期！", "warning");
                    return false;
                }
                var txttime2 = $("#txttime2").val();
                if (txttime2 == "0") {
                    swal("下单失败", "请选择配送时间区域！", "warning");
                    return false;
                }
            }
            
        }
    </script>


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