<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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

    
    <title>马卡龙之约 - 经典蛋糕 - 蛋糕 - 法颂蛋糕官网|FOZOON—天津生日蛋糕网上订购新鲜配送</title>
    <script src="/0-finalPrj/js/product.js" tppabs="http://www.tjfozoon.com/Web/style/js/product.js"></script>
    <script src="/0-finalPrj/js/jquery.zoombie.js" tppabs="http://www.tjfozoon.com/Web/style/js/jquery.zoombie.js"></script>
	<script>
	//添加商品到购物车
	function AddCar(type) {
	    var pid = ${pro.id};
	    var shopcount = $("#shopcount").val();
	    var pskuid = ${pro.id};
	    var changeid = $("#changeid").val();
	    var uid = $("#user").val();
	    var param={};
		param.pid=pid;
		param.shopcount=shopcount;
		param.pskuid=pskuid;
		param.changeid=changeid;
	    //判断是否是整数
	    var reg = /^\d+$/;
	    if (!reg.test(shopcount)) {
	        swal("加入购物车失败", "购买数量必须为整数类型！", "warning");
	        return;
	    }
	    if (shopcount <= 0) {
	        swal("加入购物车失败", "购买数量必须大于0！", "warning");
	        return;
	    }
	    if (isNaN(pskuid)) {
	        swal("加入购物车失败", "请选择规格！", "warning");
	        return;
	    }
	    $.ajax({
	    	url : "http://localhost:8080/0-finalPrj/cartadd",
			type : "POST",
			data :param,
			dataType : "json",
	        success: function (ReturnData) {
	            if (ReturnData.result == "yes") {
	                if (type == "add") {
	                    swal({
	                        title: "加入购物车成功",
	                        text: "是否跳转到我的购物车进行下单？",
	                        type: "success",
	                        showCancelButton: true,
	                        confirmButtonColor: '#DD6B55',
	                        confirmButtonText: '我的购物车',
	                        cancelButtonText: '继续浏览'
	                    }, function () {
	                        window.location.href = "http://localhost:8080/0-finalPrj/showcart";
	                    });
	                }
	                if (type == "buy") {
	                    window.location.href = "http://localhost:8080/0-finalPrj/List.jsp";
	                }
	                SetTopShopNum();
	            }
	            else {
	                if (ReturnData.result == "nologin") {
	                    swal({ 
	                    	title: "加入购物车失败", 
	                    	text: "请先登录您的账号！", 
	                    	type: "warning" 
	                    	},function () { 
	                    	window.location.href = "http://localhost:8080/0-finalPrj/Login.jsp";
	                   });
	                }
	                else {
	                    swal("加入购物车失败", ReturnData.result, "warning");
	                }
	            }
	        }
	    });
	}
	//删除购物车商品
	function DelCar(cid) {
	    swal({
	        title: "确定删除?",
	        text: "您确定是否删除选中的商品",
	        type: "warning",
	        showCancelButton: true,
	        confirmButtonColor: "#DD6B55",
	        confirmButtonText: "删除",
	        cancelButtonText: "取消"
	    },
	    function () {
	        $.ajax({
	            url: "http://www.tjfozoon.com/Web/Ajax/Ajax.ashx",
	            type: "POST",
	            cache: false,
	            dataType: "text",
	            data: { action: "DelCar", cid: cid },
	            success: function (ReturnData) {
	                if (ReturnData == "yes") {
	                    //$("#car_" + cid).remove();
	                    //Statistical();
	                    window.location.href = "Login.html-rurl=-Shopping-Car.html"/*tpa=http://www.tjfozoon.com/Login.html?rurl=/Shopping/Car.html*/;
	                }
	                else {
	                    swal("删除购物车商品失败", ReturnData, "warning");
	                }
	            }
	        });
	    });
	}
	//对多位小数进行四舍五入
	//num是要处理的数字  v为要保留的小数位数
	function decimal(num, v) {
	    var vv = Math.pow(10, v);
	    return Math.round(num * vv) / vv;
	}
	//限制商品只能输入整数
	function IsInt(obj) {
	    var reg = /^\d+$/;
	    if (!reg.test($(obj).val())) {
	        $(obj).val("1");
	    }
	}

	//增加减少购物车商品数量
	function OperationNum(cid, model) {
	    var buycount = $("#buy_num_" + cid).val();
	    $.ajax({
	        url: "http://www.tjfozoon.com/Web/Ajax/Ajax.ashx",
	        type: "POST",
	        cache: false,
	        dataType: "xml",
	        data: { action: "AddOrReduceNum", cid: cid, model: escape(model), buycount: buycount },
	        success: function (ReturnData) {
	            $("#buy_num_" + cid).val(parseInt($("response num", ReturnData).text()));
	            var state = $("response state", ReturnData).text();
	            if (state != "yes") {
	                swal("修改商品数量失败", $("response errorinfo", ReturnData).text(), "warning");
	            }
	            else {
	                if (model == "Reduce") {
	                    window.location.href = "Login.html-rurl=-Shopping-Car.html"/*tpa=http://www.tjfozoon.com/Login.html?rurl=/Shopping/Car.html*/;
	                }
	                else {
	                    //小计金额
	                    $("#totalprice_" + cid).html((parseFloat($("response num", ReturnData).text()) * parseFloat($("#price1_" + cid).val())).toFixed(2));
	                    //统计数量和金额
	                    Statistical();
	                }
	            }
	        }
	    });
	}
	//设置商品购物数量
	function SetShopNum(type) {
	    switch (type) {
	        case "add":
	            var num = parseInt($("#shopcount").val());
	            if (!isNaN(num)) {
	                $("#shopcount").val(num + 1);
	            }
	            else {
	                $("#shopcount").val("1");
	            }
	            break;
	        case "reduce":
	            var num = parseInt($("#shopcount").val());
	            if (!isNaN(num) && num > 1) {
	                $("#shopcount").val(num - 1);
	            }
	            else {
	                $("#shopcount").val("1");
	            }
	            break;
	    }
	}
	//设置头部购物车数量
	function SetTopShopNum() {
	    $.ajax({
	        url: "http://www.tjfozoon.com/Web/Ajax/Ajax.ashx",
	        type: "POST",
	        cache: false,
	        dataType: "text",
	        data: { action: "SetTopShopNum" },
	        success: function (ReturnData) {
	            $("#t_car_num").html(ReturnData);
	        }
	    });
	}
	//统计数量和金额
	function Statistical() {
	    //设置头部购物车数量
	    SetTopShopNum();
	    //总金额
	    var totalprice = 0;
	    $(".myCart").find("span[name='totalprice']").each(function () {
	        totalprice = totalprice + parseFloat($(this).html());
	    });
	    $("#totalprice").html(totalprice.toFixed(2));
	    $("#totalprice2").html(totalprice.toFixed(2));
	}
	
	</script>
   
</head>
<body>
    
    <!-- 头部置顶 -->
    <div class="header w100 tac rel bgcf act">
        <a class="logo db fl mt25" href="index.htm" tppabs="http://www.tjfozoon.com/">
            <img src="/0-finalPrj/img/logo.png" tppabs="http://www.tjfozoon.com/Web/style/images/logo.png" class="img100"></a>
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
                <a href="javascript:if(confirm(%27http://www.tjfozoon.com/Login.html?rurl=%2fProduct%2f10572%2fView.html  \n\nThis file was not retrieved by Teleport Pro, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon.  \n\nDo you want to open it from the server?%27))window.location=%27http://www.tjfozoon.com/Login.html?rurl=%2fProduct%2f10572%2fView.html%27" tppabs="http://www.tjfozoon.com/Login.html?rurl=%2fProduct%2f10572%2fView.html" class="dib login">登录</a>
                
            </li>
            <div class="clr"></div>
        </ul>
        <div class="fr login-btn bm-dn">
            
            <a href="Register.html" tppabs="http://www.tjfozoon.com/Register.html" class="dib">注册</a>
            <a href="javascript:if(confirm(%27http://www.tjfozoon.com/Login.html?rurl=%2fProduct%2f10572%2fView.html  \n\nThis file was not retrieved by Teleport Pro, because it was unavailable, or its retrieval was aborted, or the project was stopped too soon.  \n\nDo you want to open it from the server?%27))window.location=%27http://www.tjfozoon.com/Login.html?rurl=%2fProduct%2f10572%2fView.html%27" tppabs="http://www.tjfozoon.com/Login.html?rurl=%2fProduct%2f10572%2fView.html" class="dib login">登录</a>
            
        </div>
        <a href="javascript:void(0);" class="dn bm-db fr nav-ico h100 mr15"></a>
        <a href="Login.html-rurl=-UserCenter-Index.html" tppabs="http://www.tjfozoon.com/UserCenter/Index.html" class="dn bm-db fr menber-ico h100 mr15"></a>
        <a href="Login.html-rurl=-Shopping-Car.html" tppabs="http://www.tjfozoon.com/Shopping/Car.html" class="dn bm-db fr cart-ico h100 mr15"></a>
        <div class="clr"></div>
    </div>
    <div class="n-header act"></div>

    
    <!-- 详情 -->
    <div class="proopen mt40">
        <div class="mauto">
            <div class="proopen-left fl xm-dn">
                <div class="slider8 small-specpiclist">
                    
                            <div class="slide act" piclink="/UserFiles/upload/image/20170416/20170416182950403.jpg">
                                <a href="javascript:void(0);" class="db" data-slide-index="0">
                                    <img src="/0-finalPrj/img/${pro.img1 }" tppabs="http://www.tjfozoon.com/UserFiles/upload/image/20170416/20170416182950403.jpg" class="img100" /></a>
                            </div>
                        
                            <div class="slide " piclink="/UserFiles/upload/image/20170427/20170427122549196.jpg">
                                <a href="javascript:void(0);" class="db" data-slide-index="1">
                                    <img src="/0-finalPrj/img/${pro.img2 }" tppabs="http://www.tjfozoon.com/UserFiles/upload/image/20170427/20170427122549196.jpg" class="img100" /></a>
                            </div>
                        
                        
                </div>
            </div>
            <div class="proopen-center fl">
                <ul class="bxslider big-specpiclist">
                    
                            <li piclink="/UserFiles/upload/image/20170416/20170416182950403.jpg"><a href="javascript:void(0);" class="db image1">
                                <img src="/0-finalPrj/img/${pro.img1 }" tppabs="http://www.tjfozoon.com/UserFiles/upload/image/20170416/20170416182950403.jpg" class="img100"></a></li>
                        
                            <li piclink="/UserFiles/upload/image/20170427/20170427122549196.jpg"><a href="javascript:void(0);" class="db image1">
                                <img src="/0-finalPrj/img/${pro.img2 }" tppabs="http://www.tjfozoon.com/UserFiles/upload/image/20170427/20170427122549196.jpg" class="img100"></a></li>
                        
                            
                </ul>
            </div>
            <div class="proopen-right fr mt15">
                <p class="fs28 c9 sm-mt20 pb15 mb15 li34 b_b_e text-b">${pro.name }<span class="frumo fs18 text ml5">${pro.englishname }</span></p>
                <p class="fs28 khaki li36 mb20 text-b">￥<span class="frumo fs32 text-b" id="price1">${pro.price }</span></p>                 
                    <div class="clr"></div>             
                <p class="fs14 c9 li36 pb15 text">
                    <span class="sm-li66 vt">尺寸：</span>
                    <i class="sss_div dib sel-sku" sequence="0"><a href="javascript:void(0);" sequence="0" skuspec="${pro.size }" class="dib progg vt">${pro.size }<em></em></a></i>
                </p>
                
                <p class="fs14 c9 li36 pb15 text">
                    <span class="sm-li66 vt">口味：</span>
                    <i class="sss_div dib sel-sku" sequence="1"><a href="javascript:void(0);" sequence="1" skuspec="${pro.flavor }" class="dib progg vt">${pro.flavor }<em></em></a></i>
                </p>
                
                <p class="li20 c9 pb20 text">
                    需提前4小时预定
                </p>
                
                <p class="li20 c9 b_b_e pb20 text dn" id="selspec">
                </p>

                <p class="pt25 pb25 b_b_e p-num01">
                    <span class="dib no-bg text">数量<i class="dib s-num vt fr "><a class="s-num-tab" onclick="SetShopNum('reduce');">-</a><input type="text" id="shopcount" maxlength="3" onblur="IsInt(this)" value="1" /><a class="s-num-tab" onclick="SetShopNum('add');">+</a></i>
                    </span>
                    
                    <a href="javascript:void(0);" onclick="AddCar('add');" class="dib act addcar">加入购物车</a>
                    <a href="javascript:void(0);" onclick="AddCar('buy');" class="dib act last addcar">立即购买</a>
                    
                </p>
                
                <p class="pt10 pb10 b_b_e clearfix">
                    <a href="javascript:void(0);" changeid="10183" class="dib hg pt5 pb5 li22 tac khaki vt mt5 text progg change">换购<em></em></a>
                    <span class="dib hg_text ovh2 li20 c9 vt mt5 text">购买该商品 + 15元换购九格蛋糕（覆莓与柠檬二选一）,备注中注明口味</span>
                    <span class="dib hg_img vt fr">
                        <img src="/0-finalPrj/img/20170906090757582_t.jpg" tppabs="http://www.tjfozoon.com/UserFiles/upload/image/20170906/20170906090757582_t.jpg" alt="九格蛋糕（覆莓与柠檬二选一）" price2="15" price1="25.00" style="cursor: pointer;" class="img100 hgsppic"></span>
                </p>
                
                <p class="pt10 pb10 b_b_e clearfix">
                    <a href="javascript:void(0);" changeid="10185" class="dib hg pt5 pb5 li22 tac khaki vt mt5 text progg change">换购<em></em></a>
                    <span class="dib hg_text ovh2 li20 c9 vt mt5 text">购买该商品 + 18元换购甜品搭档,木糠蛋糕和北海道蛋糕各一盒</span>
                    <span class="dib hg_img vt fr">
                        <img src="/0-finalPrj/img/20170906092734744_t.jpg" tppabs="http://www.tjfozoon.com/UserFiles/upload/image/20170906/20170906092734744_t.jpg" alt="甜品搭档" price2="18" price1="30.00" style="cursor: pointer;" class="img100 hgsppic"></span>
                </p>
                
                <p class="c9 mt20 text">订购中遇到问题请您查看订购流程或致电客服热线：4000 - 233 - 234</p>
                <div class="bdsharebuttonbox mt15 sm-dn"><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_more" data-cmd="more"></a><a class="bds_count" data-cmd="count"></a></div>
                <script>window._bd_share_config = { "common": { "bdSnsKey": {}, "bdText": "", "bdMini": "2", "bdMiniList": false, "bdPic": "", "bdStyle": "0", "bdSize": "16" }, "share": {} }; with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];</script>
            </div>
            <div class="clr"></div>
        </div>
    </div>
    <input type="hidden" id="user" value="${loginuser.id }">
    <input type="hidden" id="changeid" value="0" />
    <input type="hidden" id="pskuid" value="0" />
    <input type="hidden" id="productid" value="0" />
    <input type="hidden" id="defaultsku" price1="299" price2="0.00" stockcount="461" value="0" />
    
    <input type="hidden" id="ProductSku10171" name="ProductSku" price1="179.00" price2="0.00" pskuid="10171" skuno="01" stockcount="992" skuspec="6%e5%90%8b,%e9%b2%9c%e4%b9%b3" piclist="" content1="适合2-4人食用" value="10171" />
    <!-- 详情下面部分 -->
    <div class="mauto mt40 mb20">
        <div class="xq_left fl">
            <div class="title02 tac rel mb15 mt10">
                <p class="line abs"></p>
                <div class="dib rel z99 bgcf pl20 pr20">
                    <p class="fs16 mb5 li36 c9 text">猜你喜欢</p>
                </div>
            </div>
            <ul>
                <c:forEach items="${typeone }" var="p">
                        <li>
                            <a href="View-4.html" tppabs="http://www.tjfozoon.com/Product/10579/View.html" class="db a">
                                <img src="/0-finalPrj/img/${p.img1 }" class="img100"></a><a href="#" class="ovh db text fs14 c6 pt10 tac">${p.name }</a></li>
				 </c:forEach>  
            </ul>
        </div>
        <div class="xq_right fr">
            <div class="title02 tac rel mb40">
                <p class="line abs"></p>
                <div class="dib rel z99 bgcf pl40 pr40">
                    <p class="frumo fs36 mb5 li36 c9 text-b">Introduction</p>
                    <p class="fs14 li20 c9 text">图文介绍</p>
                </div>
            </div>
            <style>
                @media (max-width: 640px) {
                    .pcontent img {
                        width: 100%!important;
                        height: auto!important;
                    }
                }
            </style>
            <div class="mb50 tac li24 fs14 c9 w88 ma text pcontent">
                <p class="MsoListParagraph" style="margin-left: 24px; text-indent: 0px; text-align: center;"><br/></p><p><span style="font-size: 14px;"><br/></span></p><p style="text-align: center;"><span style="font-size: 14px;">原味乳脂奶油的白色加上几抹巧克力淋酱的外表，低调的外表却掩盖不住高调的内涵，</span></p><p style="text-align: center;"><span style="font-size: 14px;">表面的三颗不同口味的马卡龙如同性格不同的闺蜜好友；</span></p><p style="text-align: center;"><span style="font-size: 14px;">配上烟卷巧克力，犹如在一个高雅清新的环境下正在进行一个浪漫的约会哦！</span></p><p><span style="font-size: 14px;"><br/></span></p><p><br/></p><p style="text-align: center;"><span style="font-family: 宋体; font-size: 14px; text-align: center;">香草蛋糕、乳脂奶油、覆盆子库利夹层、彩色马卡龙、榛果碎、巧克力装饰</span></p><p style="text-align: center;"><br/></p><p style="text-align: center;"><strong><span style="font-size: 14px;">夹层图展示：</span></strong></p><p style="text-align: center;"><img src="6364393631128796934201956.jpg" tppabs="http://www.tjfozoon.com/UserFiles/upload/image/20171018/6364393631128796934201956.jpg" title="马卡龙之约夹层.jpg" alt="马卡龙之约夹层.jpg" width="500" height="500" border="0" vspace="0" style="width: 500px; height: 500px;"/></p><p><br/></p><p><br/></p><p><br/></p>
            </div>

            <div class="title02 tac rel mb40">
                <p class="line abs"></p>
                <div class="dib rel z99 bgcf pl40 pr40">
                    <p class="frumo fs36 mb5 li36 c9  text-b">Evaluation</p>
                    <p class="fs14 li20 c9 text">累计点评</p>
                </div>
            </div>
            <input type="hidden" id="page" value="1" />
            <div class="ljdp fs14" id="commentlist">
            </div>

        </div>
        <div class="clr"></div>
    </div>
    <script>
        function commentpage(page) {
            var pid = $("#productid").val();
            $.ajax({
                url: "http://www.tjfozoon.com/Web/Ajax/Ajax.ashx",
                type: "POST",
                cache: false,
                dataType: "text",
                data: { action: "GetProductComment", pid: pid, page: page },
                success: function (ReturnData) {
                    if (ReturnData == "no") {
                        swal("出错", "获取评论内容失败", "warning");
                    }
                    else {
                        $("#commentlist").html(ReturnData);
                        $("#page").val(page);
                    }
                }
            });
        }
        $(function () {
            commentpage(1);
        });
    </script>
    <script>
        $(function () {
            //选择规格
            $(".sel-sku a").on("click", function () {
                //if (!$(this).hasClass("nosel")) {
                //设置选择或取消样式
                if ($(this).hasClass("act")) {
                    $(this).removeClass("act");
                }
                else {
                    $(this).siblings().removeClass("act");
                    $(this).addClass("act");
                }
                
                //设置规格提醒
                setspectip();
                //}
            });
            //选择换购
            $(".change").click(function () {
                if ($(this).hasClass("act")) {
                    $("#changeid").val("0");
                    $(this).removeClass("act");
                }
                else {
                    var changeid = $(this).attr("changeid");
                    $("#changeid").val(changeid);
                    $(".change").removeClass("act");
                    $(this).addClass("act");
                }
            });
        });
      //设置规格提醒
        function setspectip() {
            var spec = "";
            $(".sel-sku").each(function () {
                $(this).children("a").each(function () {
                    if ($(this).hasClass("act")) {
                        spec += $(this).attr("skuspec")+ ",";
                    }
                });
            });
            if (spec != "") {
                spec = spec.substring(0, spec.length - 1);
                var pskuid = $("#pskuid").val();
                if (pskuid == 0) {
                    $("#selspec").show();
                    $("#selspec").html("已选规格：" + spec + "");
                } else {
                    var obj = $("#ProductSku" + pskuid);
                    var content1 = obj.attr("content1");
                    var skuspec = obj.attr("skuspec");
                    $("#selspec").show();
                    $("#selspec").html(content1 + "<br>已选规格：" +skuspec + "");
                }
            } else {
                $("#selspec").hide();
                $("#selspec").html("");
            }
        }
/**        //获取选中规格有货的所有规格值
        function getshowspec() {
            //获取已选的规格值添加到的arryselskuspec中
            var arryselskuspec = [];
            var showspec = [];
            $(".sel-sku").each(function () {
                var selskuspec = $(this).children("http://www.tjfozoon.com/Product/10572/a.act").attr("skuspec");
                if (selskuspec != null) {
                    arryselskuspec.push(selskuspec);
                }
                else {
                    arryselskuspec.push("");
                }
                showspec.push("");
            });
            //匹配值并添加到的showspec中
            $("input[name='ProductSku']").each(function () {
                //if ($(this).attr("stockcount") != "0") {
                var arryinputskuspec = $(this).attr("skuspec").split(",");
                var isok = true;
                for (var i = 0; i < arryselskuspec.length; i++) {
                    if (arryselskuspec[i] != "" && arryinputskuspec[i] != arryselskuspec[i]) {
                        isok = false;
                    }
                }
                if (isok) {
                    for (var i = 0; i < arryinputskuspec.length; i++) {
                        if (("," + showspec[i]).indexOf("," + arryinputskuspec[i] + ",") < 0) {
                            showspec[i] += arryinputskuspec[i] + ",";
                        }
                    }
                }
                //}
            });
            return showspec;
        }
        //判断当前选择的对应已选的是否有货
        function setspecselstate(obj) {
            //当前选择的规格
            var selsequence = $(obj).parent().attr("sequence");
            //获取选中规格有货的所有规格值
            var showspec = getshowspec();
            //设置选择的规格值匹配的保留，不匹配的去掉选择
            $(".sel-sku").each(function (index) {
                if (selsequence != index) {
                    var sequence = $(this).attr("sequence");
                    $(this).children("a").each(function () {
                        if (("," + showspec[sequence]).indexOf($(this).attr("skuspec")) < 0) {
                            $(this).removeClass("act");
                        }
                    });
                }
            });
        }
        //设置规格显示状态
        function setspecdisplay() {
            //获取选中规格有货的所有规格值
            var showspec = getshowspec();
            //设置规格值匹配的显示，不匹配的隐藏
            $(".sel-sku").each(function () {
                var sequence = $(this).attr("sequence");
                $(this).children("a").each(function () {
                    if (("," + showspec[sequence]).indexOf($(this).attr("skuspec")) > -1) {
                        $(this).removeClass("nosel");
                    }
                    else {
                        $(this).addClass("nosel");
                    }
                });
            });
        }*/
        
        //设置规格ID
/**        function setspecskuid() {
            $("#pskuid").val("0");
            var spec = "";
            $(".sel-sku").each(function () {
                $(this).children("a").each(function () {
                    if ($(this).hasClass("act")) {
                        spec += $(this).attr("skuspec") + ",";
                    }
                });
            });
            if (spec != "") {
                spec = spec.substring(0, spec.length - 1);
                $("input[name='ProductSku']").each(function () {
                    var skuspec = $(this).attr("skuspec");
                    if (spec == skuspec) {
                        $("#pskuid").val($(this).val());
                        return;
                    }
                });
            }
        }
       
        //设置规格其他信息
        function setspecother() {
            var pskuid = $("#pskuid").val();
            if (pskuid != 0) {
                var obj = $("#ProductSku" + pskuid);
                if (obj.length > 0 && obj.val() == pskuid) {
                    if (obj.attr("pskuid") == pskuid) {
                        var price1 = obj.attr("price1");
                        var price2 = obj.attr("price2");
                        var pskuid = obj.attr("pskuid");
                        var skuno = obj.attr("skuno");
                        var stockcount = obj.attr("stockcount");
                        var skuspec = obj.attr("skuspec");
                        var content1 = obj.attr("content1");
                        var piclist = obj.attr("piclist");
                        //更改价格
                        $("#price1").html(price1);
                    }
                }
            } else {
                var obj = $("#defaultsku");
                var price1 = obj.attr("price1");
                var price2 = obj.attr("price2");
                var stockcount = obj.attr("stockcount");
                //更改价格
                $("#price1").html(price1);
            }
            //setspecpiclist();
        }*/
        //设置规格对应图片
        //function setspecpiclist() {
        //    $(".big-specpiclist li").show();
        //    $(".small-specpiclist div").show();
        //    var pskuid = $("#pskuid").val();
        //    if (pskuid != 0) {
        //        var obj = $("#ProductSku" + pskuid);
        //        var piclist = obj.attr("piclist");
        //        if (piclist != "") {
        //            //设置大图片
        //            $(".big-specpiclist li").each(function () {
        //                if (piclist.indexOf($(this).attr("piclink")) > -1) {
        //                    $(this).show();
        //                }
        //                else {
        //                    $(this).hide();
        //                }
        //            });
        //            //设置小图片
        //            $(".small-specpiclist div").each(function () {
        //                if (piclist.indexOf($(this).attr("piclink")) > -1) {
        //                    $(this).show();
        //                }
        //                else {
        //                    $(this).hide();
        //                }
        //            });
        //        }
        //    }
        //}
    </script>
    <script type="text/javascript">
        $(function () {
            $('.bxslider').bxSlider({
                pagerCustom: '.slider8',
                pager: true
            });
            $('.slider8').bxSlider({
                mode: 'vertical',
                autoHover: false,
                auto: true,
                minSlides: 4,
                maxSlides: 4,
                slideMargin: 10,
                pager: false,
            });
            $('.slider8 .slide').click(function () {
                $(this).addClass('act').siblings().removeClass('act');
            })
            $('.p-num-a').click(function () {
                $(this).find("span").toggle();
            })

            var wow = new WOW({
                boxClass: 'wow',
                animateClass: 'animated',
                offset: 0,
                mobile: true,
                live: true
            });
            if ($(window).width() > 767) {
                $('.image1').zoombie();
            }

            wow.init();
        })
    </script>
    <style>
        .pop-a-close {
            right: 15px;
            top: 15px;
            width: 30px;
            height: 24px;
            background: url(nav_ico_close.png)/*tpa=http://www.tjfozoon.com/Web/style/images/nav_ico_close.png*/ no-repeat center center / cover;
        }

        .hgimg {
            max-height: 100%;
        }

        .ztd-pop.address_open .frame {
            height: auto;
        }

        .ztd-pop.address_open .address-box .a-b-middle {
            width: 450px;
        }

        @media (max-width: 767px) {
            .pop-a-close {
                width: 22px;
                height: 18px;
            }

           
        }
        @media (max-width: 520px) {
            .ztd-pop.address_open .address-box .a-b-middle {
                width: 90%;
            }
        }
    </style>
    <div class="address_open ztd-pop dn">
        <div class="bg"></div>
        <div class="address-box">
            <div class="a-b-middle rel">
                <p class="fs20 khaki"></p>
                <div class="frame">
                    <img src="nopic.jpg" tppabs="http://www.tjfozoon.com/Web/style/images/nopic.jpg" width="450" class="hgimg" />
                </div>
                <a href="javascript:void(0);" class="db abs pop-a-close"></a>
            </div>

        </div>
    </div>
    <script>
        $(function () {
            $(".hgsppic").click(function () {
                var piclink = $(this).attr("src");
                var ProductName = $(this).attr("alt");
                var Price2 = $(this).attr("price2");
                var Price1 = $(this).attr("price1");
                $(".address_open .khaki").html(ProductName + "<span class=\"pl20\">原价￥" + Price1 + "</span>");
                $(".address_open .hgimg").attr("src", piclink);
                $(".address_open").show();
            });
            $(".address_open .pop-a-close").click(function () {
                $(".address_open").hide();
            });
        });
    </script>


    <!-- 底部 -->
    <div class="footer tac pb45">
        <a href="index.htm" tppabs="http://www.tjfozoon.com/" class="dib f-logo sm-dn">
            <img src="/0-finalPrj/img/footer-logo.png" tppabs="http://www.tjfozoon.com/Web/style/images/footer-logo.png" class="img100" /></a>
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
                <img src="/0-finalPrj/img/ewm.jpg" tppabs="http://www.tjfozoon.com/Web/style/images/ewm.jpg" /></span></li>
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