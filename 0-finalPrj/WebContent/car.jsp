<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/reset.css">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/jquery.bxslider.min.css">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/animate.css">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/layout.css">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/dll.css">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/banner_css.css">
    <link rel="stylesheet" type="text/css" href="/0-finalPrj/css/media.css">
    <script type="text/javascript" src="/0-finalPrj/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="/0-finalPrj/js/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="/0-finalPrj/js/rem.js"></script>
    <script type="text/javascript" src="/0-finalPrj/js/main.js"></script>
    <script type="text/javascript" src="/0-finalPrj/js/wow.min.js"></script>

    <link href="/0-finalPrj/css/sweet-alert.css" rel="stylesheet" type="text/css" />
    <script src="/0-finalPrj/js/sweet-alert.min.js" type="text/javascript"></script>

    
    <title>购物车 - 法颂蛋糕官网|FOZOON—天津生日蛋糕网上订购新鲜配送</title>
    <script type="text/javascript">

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

  //删除购物车商品
  function dele(cid) {
	  alert(cid);
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
              url: "http://localhost:8080/0-finalPrj/deleteitem",
              type: "POST",
              cache: false,
              dataType: "json",
              data: {"cid": cid },
              success: function (ReturnData) {
            	  alert("1");
            	  alert(ReturnData.result)
                  if (ReturnData.result == "success") {
                      window.location.href = "http://localhost:8080/0-finalPrj/car.jsp";
                  }
                  else if(ReturnData.result == "fail"){
                      swal("删除购物车商品失败", ReturnData, "warning");
                  }
              }
          });
      });
  }
  //增加减少购物车商品数量
  function OperationNum(cid, model) {
      var buycount = $("#buy_num_" + cid).val();
      alter(buycount);
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
     
      //总金额
      var totalprice = 0;
      $(".myCart").find("span[name='totalprice']").each(function () {
          totalprice = totalprice + parseFloat($(this).html());
      });
      $("#totalprice").html(totalprice.toFixed(2));
      $("#totalprice2").html(totalprice.toFixed(2));
  }
    </script>

    <meta name="Keywords" content="天津蛋糕，天津生日蛋糕，预订生日蛋糕，蛋糕配送，天津蛋糕配送，法颂，法颂蛋糕，动物奶油蛋糕，天津婚庆蛋糕、天津寿宴蛋糕、天津定制宴会蛋糕、诺心，诺心蛋糕，21cake，21cake蛋糕，好利来，好利来蛋糕，津乐园，巴黎贝甜，多乐之日，" />
    <meta name="Description" content="天津生日蛋糕订购平台，网上预订当日配送，网上可选购甜品、礼盒、马卡龙、儿童蛋糕、慕斯蛋糕、乳脂蛋糕、婚庆蛋糕、冰淇淋蛋糕、蛋黄酥等产品。生日蛋糕仅限天津市部分区域配送，礼盒及部分甜品类产品全国免费配送。" />
</head>
<body>
    
    <!-- 头部置顶 -->
    <div class="header w100 tac rel bgcf act">
        <a class="logo db fl mt25" href="/">
            <img src="/0-finalPrj/img/logo.png" class="img100"></a>
        <ul class="nav dib abs bm-dn">
            <li class="home"><a href="/" class="db h100"></a></li>
            
            <li><a href="/Product/10181/List.html" class="db"><span class="s1">蛋糕系列</span><span class="s2">CAKE</span></a></li>
            <li><a href="/Product/10183/List.html" class="db"><span class="s1">欧风系列</span><span class="s2">EUROPE CAKE</span></a></li>
            <li><a href="/Product/10184/List.html" class="db"><span class="s1">下午茶</span><span class="s2">AFTERNOON TEA</span></a></li>
            <li><a href="/Product/10182/List.html" class="db"><span class="s1">礼盒专区</span><span class="s2">GIFT</span></a></li>
            <li><a href="/Product/Company/Index.html" class="db"><span class="s1">企业专区</span><span class="s2">BUSINESS</span></a></li>
            <li><a href="/UserCenter/Index.html" class="db"><span class="s1">会员中心</span><span class="s2">MEMBER</span></a></li>
            <li><a href="/ContactUs/Index.html" class="db"><span class="s1">联系我们</span><span class="s2">CONTACT</span></a></li>
            <li class="login-btn">
                
                <a href="/LoginOut.html" class="dib">退出</a>
                <a href="/Shopping/Car.html" class="dib login">购物车</a>
                
            </li>
            <div class="clr"></div>
        </ul>
        <div class="fr login-btn bm-dn">
            
            <a href="/UserCenter/Index.html" class="pr10" style="background-color: #FFF; color: #b69b65;">${loginuser.name}</a>
            <a href="/LoginOut.html" class="pr10" style="background-color: #FFF; color: #b69b65;">退出</a>
            <a href="/Shopping/Car.html" class="dib login">购物车</a>
            
        </div>
        <a href="javascript:void(0);" class="dn bm-db fr nav-ico h100 mr15"></a>
        <a href="/UserCenter/Index.html" class="dn bm-db fr menber-ico h100 mr15"></a>
        <a href="/Shopping/Car.html" class="dn bm-db fr cart-ico h100 mr15"></a>
        <div class="clr"></div>
    </div>
    <div class="n-header act"></div>

    
    <!-- 购物车 -->
    <div class="mauto mt45">
        <h4 class="tac fs36 c9 li38 text-m frumo">Shopping Cart</h4>
        <div class="cart_title tac mt30 mb40">
            <a href="javascript:void(0);" class="dib act">我的购物车<em></em></a>
            <a href="javascript:void(0);" class="dib">填写订单信息<em></em></a>
            <a href="javascript:void(0);" class="dib">完成订单<em></em></a>
        </div>

        <!-- 面包屑 -->
        <div class="cart pl30 pr30 pb30 tac fs14 bgmc pt10 myCart">
            <ul class="w100">
                <li class="c_header sm-dn">

                    <div class="fl d02">商品信息</div>
                    <div class="fl d03">单价</div>
                    <div class="fl d04">数量</div>
                    <div class="fl d03">小计</div>
                    <div class="fl d03">操作</div>
                    <div class="clr"></div>
                </li> 
            <c:forEach items="${cartItem}" var="item">
                <li class="c_body">
                    <div class="fl d02">
                        <div class="fl c_img mr20 rel">
                            <img src="/0-finalPrj/img/${item.product.img1}" class="imgvt">
                        </div>
                        <p class="fl text_vt li26 tal text"><span>${item.product.name}<span class="db ovh">${item.id}</span></span></p>
                        <div class="clr"></div>
                    </div>
                    <div class="fl d03 fs16 text">${item.product.price}<span class="sm-dn">/个</span></div>
                    <div class="fl d04 fs16">
                        <span class="dib mt20 s-num"><b class="fl i-red" style="cursor: pointer;" onclick="OperationNum('${item.id}','Reduce')">-</b><input type="text" class="fl tac" onchange="OperationNum('${item.id}','ChangesDirectly')" maxlength="4" id="buy_num_15712" name="buynum" value="${item.count}"><b class="fl i-add" style="cursor: pointer;" onclick="OperationNum('${item.id}','Add')">+</b><div class="clr"></div>
                        </span>
                    </div>
                    <div class="fl d03 fs16 sm-dn khaki"><span name="totalprice" >${item.product.price*item.count}</span>元</div>
                    <div class="fl d03 fs16 dn sm-db text">个</div>
                    <div class="fl d03"><a href="javascript:void(0);" onclick="dele(${item.id});" class="fs16 c-b-del">删除</a></div>
                    <div class="clr"></div>
                </li>
                </c:forEach>
            </ul>
        </div>
        <div class="settlement pl30 li54 fs14 mt20 bgmc mb20">
            <p class="fl sm-dn c9 input_div">
                <a href="/Product/News.html" class="fs14 c9" style="background-color: #b59a64; color: #FFF; padding: 5px 10px; margin-right: 15px;">清空购物车</a>   |    共 <span></span> 件商品
            </p>
            <div class="text dn sm-db pb10">
                合计：<span class="fr" id="totalprice2"></span>元<div class="clr"></div>
            </div>
            

            <div class="fr li54 st-r"><span class="sm-dn c9">合计：&nbsp;<span class="khaki fs20 li54" id="totalprice">0.00</span>&nbsp;元</span><a href="/0-finalPrj/confirm.jsp" class="dib ml25 g-sett cf fs22 tac vt text">去结算</a></div>
            <div class="clr"></div>
        </div>

        
        
        <div class="bgmc tuijian clearfix tac mb40">
            <ul>
                <li class="fl pt35 pb35">
                    <h6 class="fs22 khaki li30 mb25 text-b">更多附件</h6>
                    <div class="tj_div tac">

                        
                                <dl class="fs14 text li24">
                                    <dt class="mb10">
                                        <img src="/0-finalPrj/img/20170624140524800_t.jpg" class="img100"></dt>
                                    <dd class="ovh">卡通生日帽</dd>
                                    <dd class="khaki mb5">10.00元</dd>
                                    <dd><a href="javascript:void(0);" pid="12346" class="add-tj fs14 cf text">添加</a></dd>
                                </dl>
                            
                                <dl class="fs14 text li24">
                                    <dt class="mb10">
                                        <img src="/0-finalPrj/img/20170428151435723_t.jpg" class="img100"></dt>
                                    <dd class="ovh">生肖蜡烛</dd>
                                    <dd class="khaki mb5">10.00元</dd>
                                    <dd><a href="javascript:void(0);" pid="10815" class="add-tj fs14 cf text">添加</a></dd>
                                </dl>
                            
                    </div>
                </li>
                <li class="fl pt35 pb35">
                    <h6 class="fs22 khaki li30 mb25 text-b">推荐产品</h6>
                    <div class="tj_div tac">
                        
                                <dl class="fs14 text li24">
                                    <dt class="mb10">
                                        <img src="/0-finalPrj/img/20171101105949423_t.jpg" class="img100"></dt>
                                    <dd class="ovh">蛋黄酥礼盒</dd>
                                    <dd class="khaki mb5">45.00元</dd>
                                    <dd><a href="javascript:void(0);" pid="13727" class="add-tj fs14 cf text">添加</a></dd>
                                </dl>
                            
                                <dl class="fs14 text li24">
                                    <dt class="mb10">
                                        <img src="/0-finalPrj/img/20170906092734744_t.jpg" class="img100"></dt>
                                    <dd class="ovh">甜品搭档</dd>
                                    <dd class="khaki mb5">30.00元</dd>
                                    <dd><a href="javascript:void(0);" pid="13526" class="add-tj fs14 cf text">添加</a></dd>
                                </dl>
                            
                                <dl class="fs14 text li24">
                                    <dt class="mb10">
                                        <img src="/0-finalPrj/img/20170906090757582_t.jpg" class="img100"></dt>
                                    <dd class="ovh">九格蛋糕（覆莓与柠檬二选一）</dd>
                                    <dd class="khaki mb5">25.00元</dd>
                                    <dd><a href="javascript:void(0);" pid="13525" class="add-tj fs14 cf text">添加</a></dd>
                                </dl>
                            
                    </div>
                </li>
            </ul>
        </div>
        
    </div>
    <!-- 确认购买弹出框 -->
    <div class="pop_bg_bgy">
        <iframe src="" class="w100 h100"></iframe>
    </div>
    <script>
        $(function () {
            Statistical();
            $('.add-tj').click(function () {
                var pid = $(this).attr("pid");
                $(".pop_bg_bgy iframe").attr("src", "/Product/Simple/" + pid + "/View.html");
                $('.pop_bg_bgy').fadeIn();
            });
        });
    </script>



    <!-- 底部 -->
    <div class="footer tac pb45">
        <a href="/" class="dib f-logo sm-dn">
            <img src="/0-finalPrj/img/footer-logo.png" class="img100" /></a>
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
            
                    <a href="/About/10172/Index.html">关于法颂</a><span>|</span>
                
                    <a href="/About/10173/Index.html">会员须知</a><span>|</span>
                
                    <a href="/About/10174/Index.html">购物指南</a><span>|</span>
                
                    <a href="/About/10175/Index.html">配送说明</a><span>|</span>
                
                    <a href="/About/10176/Index.html">最新招聘</a><span>|</span>
                
            <a href="/Message/Index.html">在线留言</a>
        </div>
        <div class="li24 fs12 pl30 pr30"><p>版权所有 &copy; 2005-2017 天津法颂FOZOON &nbsp;津ICP备：15001361号</p></div>
    </div>

    <div class="fixed-right bm-dn">
        <ul>
            <li><a href="/Shopping/Car.html" class="a01"></a><span class="ioc db abs tac" id="t_car_num">1</span></li>
            
                    <li><a href="http://wpa.qq.com/msgrd?v=3&uin=2503343259&site=qq&menu=yes" class="a02"></a></li>
                
                    <li><a href="http://wpa.qq.com/msgrd?v=3&uin=1638460353&site=qq&menu=yes" class="a02"></a></li>
                
            <li><a href="javascript:void(0);" class="a03"></a><span class="db abs tac p-num">4000 - 233 - 234</span></li>
            <li><a href="javascript:void(0);" class="a05"></a><span class="db abs tac ewm">
                <img src="/Web/style/images/ewm.jpg" /></span></li>
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
</body>
</html>





