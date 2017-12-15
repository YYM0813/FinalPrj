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
    
    <script>
    function ModifyPwd() {
    	alert("1");
    	var txtOldPwd = $("#txtOldPwd").val();
    	var txtNewPwd = $("#txtNewPwd").val();
    	var txtNewRePwd = $("#txtNewRePwd").val();

    	if (txtNewPwd != txtNewRePwd) {
    		swal("修改失败", "确认新密码不一致，请重新输入!", "warning");
    		return;
    	}
		var param={};
		param.oldpwd = txtOldPwd;
		param.newpwd = txtNewPwd;
    	$
    			.ajax({
    				url : "http://localhost:8080/0-finalPrj/repwd",
    				type : "POST",
    				cache : false,
    				dataType : "json",
    				data : param,
    				success : function(ReturnData) {
    					if (ReturnData.result == "yes") {
    						swal(
    								{
    									title : "修改成功",
    									text : "密码修改成功！",
    									type : "success"
    								},
    								function() {
    									window.location.href = "http://localhost:8080/0-finalPrj/index-1.jsp";
    								});
    					} else {
    						swal("修改失败","warning");
    					}
    				}
    			});
    }
    //编辑用户信息
    function EditUserInfo() {
    	alert("1");
        var txtsex = $("input[name='sex']:checked").val();
        var txtrealname = $("#txtrealname").val();
        var txtdate = $("#txtdate").val();
        var param={};
        param.sex = txtsex;
        param.name = txtrealname;
        param.dis = txtdate;
        $.ajax({
            url: "http://localhost:8080/0-finalPrj/edit",
            type: "POST",
            cache: false,
            dataType: "json",
            data: param,
            success: function (ReturnData) {
                if (ReturnData.result == "success") {
                    swal({ title: "修改成功", text: "", type: "success" }, 
                    		function () { 
                    	window.location.href = "http://localhost:8080/0-finalPrj/index-1.jsp"; 
                    });
                }
                else {
                    swal("修改失败", ReturnData, "warning");
                }
            }
        });
    }
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
            
            <a href="${ctx }/user-info.jsp" class="pr10" style="background-color: #FFF; color: #b69b65;">${loginuser.name }</a>
            <a href="http://www.tjfozoon.com/LoginOut.html" class="pr10" style="background-color: #FFF; color: #b69b65;">退出</a>
            <a href="${ctx }/car.jsp" class="dib login">购物车</a>
            
        </div>
        <a href="javascript:void(0);" class="dn bm-db fr nav-ico h100 mr15"></a>
        <a href="http://www.tjfozoon.com/UserCenter/Index.html" class="dn bm-db fr menber-ico h100 mr15"></a>
        <a href="http://www.tjfozoon.com/Shopping/Car.html" class="dn bm-db fr cart-ico h100 mr15"></a>
        <div class="clr"></div>
    </div>
    <div class="n-header act"></div>

    
    
    <!--会员中心-->
    <div class="mauto mt45">
        <h4 class="tac fs36 c9 li38 text-m frumo">Member Centre</h4>
        <h6 class="tac fs14 c9 li18 text text-b">会员中心</h6>
        <div class="mt45 b_t_border menber pt45 pb60">
            
<div class="menber_left fl ">
    
    <script>
        $(function () {
            $('.p-mnav-title').click(function () {
                $('.m-nav').slideToggle();
            })
            $(".p-mnav-title").html($(".m-nav li.act").attr("title"));
        })
    </script>
    <h3 class="text-b dn sm-db tac p-mnav-title pt20 pb20">账户信息</h3>
    
    <ul class="m-nav sm-dn">
        <li title="我的订单"><a href="http://localhost:8080/0-finalPrj/ordershow?id=${loginuser.id }" class="a0">我的订单<span class="mnav_ico"></span></a></li>
        <li title="地址管理"><a href="http://localhost:8080/0-finalPrj/addressshow?id=${loginuser.id }" class="a0">地址管理<span class="mnav_ico"></span></a></li>
      <li class="act" title="账户信息"><a href="http://www.tjfozoon.com/UserCenter/Info/Index.html" class="a5">账户信息<span class="mnav_ico"></span></a></li>
    </ul>
</div>

            <div class="menber_right fl info tac">
                <div class="i-r-right dib vt">
                    <div>
                        <span class="dib r-r-name tar mr5 sm-dn">您的昵称：</span>
                        <div class="inp tal dib">
                            <p><span class="fs12 c9 li20 dib text dn sm-inline">昵称</span><input type="text" id="txtrealname" value="" class="inptext"></p>
                        </div>
                    </div> 
                     <div class="clearfix">
                        <span class="dib r-r-name tar mr5 sm-dn">密码：</span>
                        <div class="inp tal disabled dib">
                            <p><span class="fs12 c9 li20 dib text dn sm-inline">密码</span><span class="dib gg-pwd text sm-fr" style="cursor: pointer;">修改密码</span></p>
                        </div>
                    </div>
                    <div class="sex clearfix">
                        <span class="dib r-r-name tar mr5 sm-dn">性别：</span>
                        <div class="inp tal dib text">
                            <p><span class="fs12 c9 li20 dib text dn sm-inline pl30 mr20">性别</span><em class="sm-fr sm-db mr50" style="font-style:normal;"><input type="radio" name="sex" value="1" class="sex-radio"><span class="li16 mr30 ml10 vt">先生</span><input type="radio" name="sex" value="2" class="sex-radio"><span class="li16 ml10 vt">女士</span></em></p>
                        </div>
                    </div>
                    <div>
                        <span class="dib r-r-name tar mr5 sm-dn">我的生日：</span>
                        <div class="inp tal dib">
                            <p><span class="fs12 c9 li20 dib text dn sm-inline">个人简介</span><input type="text" id="txtdate" value=""></p>
                        </div>
                    </div>
                    <div class="sex">
                        <span class="dib r-r-name tar mr5 sm-dn">&nbsp;</span>
                        <div class="inp tal dib">
                            <p class="khaki sm-tac text"><span class="db sm-pl30 sm-pr30">温馨提示：为了更好的给您提供满意的服务，请填写正确的个人信息</span></p>
                        </div>
                    </div>
                    <div class="sex">
                        <span class="dib r-r-name tar mr5 sm-dn">&nbsp;</span>
                        <div class="inp tal dib btn">
                            <p class="dib">
                                <input type="submit" class="inptext" onclick="EditUserInfo()" value="保存"></p>
                        </div>
                    </div>


                </div>
            </div>
            <div class="clr"></div>
        </div>
    </div>
   
<!-- 修改密码 -->
    <div class="address_pop dn xgmm">
        <div class="address_bg"></div>
        <div class="address_box tb">
            <div class="tb_cell">
                <div class="address_box_t ma login1 info_s w100 rel">
                    <a href="javascript:void(0);" class="close_address abs close_tc"></a>
                    <h1 class="tac cred fs24 li38 text_m">修改密码</h1>
                    <div class="pt30 pb30 li24 fs14 c0 l_left">
                        <p class="mb15 clearfix"><span class="db fl login_left_span li38 text">原密码 *</span><input type="password" id="txtOldPwd" class="fr db inp" /></p>
                        <p class="mb15 clearfix"><span class="db fl login_left_span li38 text">新密码 *</span><input type="password" id="txtNewPwd" class="fr db inp" /></p>
                        <p class="mb15 clearfix"><span class="db fl login_left_span li38 text">确认密码 *</span><input type="password" id="txtNewRePwd" class="fr db inp" /></p>
                        <p class="clearfix"><span class="db fl login_left_span li38 text">&nbsp;</span><span class="fr db span_border noBorder"><a href="javascript:void(0);" onclick="ModifyPwd()" class="db fl a-login-btn fs14 cf tac text mr20">确认</a><a href="javascript:void(0);" class="db fl a-login-btn fs14 cf tac text act close_tc">取消</a></span></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
   <script type="text/javascript">
        $(function () {
            $('.gg-pwd').click(function () {
                $('.address_pop.xgmm').fadeIn();
            })
            $('.xgmm .close_tc').click(function () {
                $('.address_pop.xgmm').fadeOut();
            })
            $('.update-phone').click(function () {
                $('.address_pop.xgsj').fadeIn();
            })
            $('.xgsj .close_tc').click(function () {
                $('.address_pop.xgsj').fadeOut();
            })
            var currYear = (new Date()).getFullYear();
            $('#txtdate').mobiscroll().date({
                theme: 'mobiscroll',
                display: 'modal', //显示方式 
                mode: 'scroller', //日期选择模式
                dateFormat: 'yyyy-mm-dd',
                lang: 'zh',
                showNow: true,
                nowText: "今天",
                startYear: currYear - 50, //开始年份
                endYear: currYear + 10, //结束年份
                daytext: '日',
                monthtext: '月',
                yeartext: '年',
                headerText: function (valueText) {
                    var array = valueText.split('-');
                    return array[0] + "年" + array[1] + "月" + array[2] + "日";
                }
            });

        })

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