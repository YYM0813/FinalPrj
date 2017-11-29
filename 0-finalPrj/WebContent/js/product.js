
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



