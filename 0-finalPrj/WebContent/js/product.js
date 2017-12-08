//添加商品到购物车
	function AddCar(type) {
	    var pid = ${pro.id};
	    var shopcount = $("#shopcount").val();
	    var pskuid = $("#pskuid").val();
	    var param={};
		param.pid=pid;
		param.shopcount=shopcount;
		param.pskuid=pskuid;
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
function DelCar(cid) {
		alter("ok");
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
            url: "http://localhost:8080/0-finalPrj/deleteproduct",
            type: "POST",
            cache: false,
            dataType: "json",
            data: {"cid": cid },
            success: function (ReturnData) {
                if (ReturnData.result == "success") {
                    window.location.href = "http://localhost:8080/0-finalPrj/car.jsp";
                }
                else {
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
//确认订单
function ConfirmOrder() {
	var name = $("#order_name").val();
	var tel = $("#order_tel").val();
	var address = $("#order_address").val();
	var param={};
	param.name=name;
	param.tel=tel;
	param.address=address;
swal({
    title: "确定提交?",
    type: "warning",
    showCancelButton: true,
    confirmButtonColor: "#DD6B55",
    confirmButtonText: "提交",
    cancelButtonText: "取消"
},
function () {
    $.ajax({
        url: "http://localhost:8080/0-finalPrj/ordercommit",
        type: "POST",
        cache: false,
        dataType: "json",
        data: param,
        success: function (ReturnData) {
            if (ReturnData.result == "success") {
                window.location.href = "http://localhost:8080/0-finalPrj/submit.jsp";
            }
            else {
                swal("删除购物车商品失败", ReturnData, "warning");
            }
        }
    });
});
}

