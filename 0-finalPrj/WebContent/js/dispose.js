//获取URL参数
function getUrlPara(paraName) {
	var sUrl = location.href;
	var sReg = "(?:\\?|&){1}" + paraName + "=([^&]*)"
	var re = new RegExp(sReg, "gi");
	if (re.exec(sUrl)) {
		return RegExp.$1.split('#')[0];
	}
	return null;
}
//登录
function Login() {	 
	var email = $("#email").val();
	var password = $("#password").val();
	var params={};
	params.email=email;
	params.password = password;
	if (email == "") {
		swal("登录失败", "请输入您的邮箱！", "warning");
	}
	if (password == "") {
		swal("登录失败", "请输入密码！", "warning");
	}
	$.ajax({
		url : "http://localhost:8080/0-finalPrj/login",
		type : "POST",
		data :params,
		dataType:'json',
		success : function(data) {
			if (data.result == "true") {
				window.location.href ="http://localhost:8080/0-finalPrj/index-1.jsp";
			} else if (data.result == "wrong") {
				swal("登录失败", "你的输入不对哦", "warning");
			} else if (data.result == "admin") {
				window.location.href = "http://localhost:8080/0-finalPrj/admin.jsp";
			}
		},error: function(data){
			swal("登录失败", "我也不晓得为什么", "warning");
		}
	});
}
// 注册
function Register() {
	var name = $("#name").val();
	var password = $("#password").val();
	var email = $("#email").val();
	var confirmpwd = $("#confirmpwd").val();
	var params={};
	params.name=name;
	params.email=email;
	params.password = password;
	params.confirmpwd=confirmpwd;
	if (name == "" || password == "" || email == ""
			|| confirmpwd == "") {
		swal("注册失败", "邮箱、用户名和密码为必填项，请填写完整！", "warning");
		return;
	}
	if (password != confirmpwd) {
		swal("注册失败", "两次密码输入不一致！", "warning");
		return false;
	}
//	if (txtmobile.length != 11 || !regnum.test(txtmobile)) {
//		swal("注册失败", "请填写正确的手机号码！", "warning");
//		return false;
//	}
	if (!$("#ckeval").attr("checked")) {
		swal("注册失败", "阅读并同意协议才可以注册!", "warning");
		return;
	}
	$.ajax({
		url : "http://localhost:8080/0-finalPrj/register",
		type : "POST",
		data :params,
		dataType : "json",
		success : function(data) {
			if (data.result == "true") {
				swal(
						{
							title : "注册成功",
							text : "注册成功！",
							type : "success"
						},
						function() {
							window.location.href = "http://localhost:8080/0-finalPrj/index-1.jsp";
						});
			} else {
				swal("注册失败", "注册失败！", "warning");
			}
		},error: function(data){
			swal("注册失败", "注册失败！", "warning");
		}
	});
}

// 找回密码
function ForgotPwd() {
	var txtmobile = $("#txtmobile").val();
	var txtmobilecode = $("#txtmobilecode").val();
	var txtnewpwd = $("#txtnewpwd").val();
	var txtrenewpwd = $("#txtrenewpwd").val();
	if (txtmobile == "" || txtmobilecode == "" || txtnewpwd == ""
			|| txtrenewpwd == "") {
		swal("找回失败", "手机、验证码和密码为必填资料!", "warning");
		return false;
	}
	if (txtnewpwd != txtrenewpwd) {
		swal("找回失败", "确认密码输入不一致！", "warning");
		return false;
	}
	$
			.ajax({
				url : "http://www.tjfozoon.com/Web/Ajax/Ajax.ashx",
				type : "POST",
				cache : false,
				dataType : "xml",
				data : {
					action : "ForgetPwd",
					txtmobile : escape(txtmobile),
					txtmobilecode : escape(txtmobilecode),
					txtnewpwd : escape(txtnewpwd)
				},
				success : function(ReturnData) {
					var state = $("response state", ReturnData).text();
					if (state == "yes") {
						swal(
								{
									title : "找回成功",
									text : $("response errorinfo", ReturnData)
											.text(),
									type : "success"
								},
								function() {
									window.location.href = "Login.html"/* tpa=http://www.tjfozoon.com/Login.html */;
								});
					} else {
						swal("找回失败",
								$("response errorinfo", ReturnData).text(),
								"warning");
					}
				}
			});
}
// 修改手机号
function ModifyMobile() {
	var txtmobile = $("#txtmobile").val();
	var txtmobilecode = $("#txtmobilecode").val();
	if (txtmobile == "" || txtmobilecode == "") {
		swal("修改失败", "手机号码和验证码为必填资料！", "warning");
		return false;
	}
	$
			.ajax({
				url : "http://www.tjfozoon.com/Web/Ajax/Ajax.ashx",
				type : "POST",
				cache : false,
				dataType : "xml",
				data : {
					action : "ModifyMobile",
					txtmobile : escape(txtmobile),
					txtmobilecode : escape(txtmobilecode)
				},
				success : function(ReturnData) {
					var state = $("response state", ReturnData).text();
					if (state == "yes") {
						swal(
								{
									title : "修改成功",
									text : "手机号码修改成功！",
									type : "success"
								},
								function() {
									window.location.href = "http://www.tjfozoon.com/Login.html?rurl=/UserCenter/Info/Index.html";
								});
					} else {
						swal("修改失败",
								$("response errorinfo", ReturnData).text(),
								"warning");
					}
				}
			});
}

// 密码修改
function ModifyPwd() {
	var txtOldPwd = $("#txtOldPwd").val();
	var txtNewPwd = $("#txtNewPwd").val();
	var txtNewRePwd = $("#txtNewRePwd").val();

	if (txtNewPwd != txtNewRePwd) {
		swal("修改失败", "确认新密码不一致，请重新输入!", "warning");
		return;
	}

	$
			.ajax({
				url : "http://www.tjfozoon.com/Web/Ajax/Ajax.ashx",
				type : "POST",
				cache : false,
				dataType : "text",
				data : {
					action : "ModifyPwd",
					txtOldpwd : escape(txtOldPwd),
					txtNewPwd : escape(txtNewPwd)
				},
				success : function(ReturnData) {
					if (ReturnData == "yes") {
						swal(
								{
									title : "修改成功",
									text : "密码修改成功！",
									type : "success"
								},
								function() {
									window.location.href = "http://www.tjfozoon.com/Login.html?rurl=/UserCenter/Info/Index.html";
								});
					} else {
						swal("修改失败", ReturnData, "warning");
					}
				}
			});
}
// 删除地址
function DelAddress(aid) {
	swal(
			{
				title : "确定删除?",
				text : "您确定是否删除选中的地址",
				type : "warning",
				showCancelButton : true,
				confirmButtonColor : "#DD6B55",
				confirmButtonText : "删除",
				cancelButtonText : "取消"
			},
			function() {
				$
						.ajax({
							url : "http://www.tjfozoon.com/Web/Ajax/Ajax.ashx",
							type : "POST",
							cache : false,
							dataType : "text",
							data : {
								action : "DelAddress",
								aid : aid
							},
							success : function(ReturnData) {
								if (ReturnData == "yes") {
									window.location.href = "http://www.tjfozoon.com/Login.html?rurl=/UserCenter/Address/List.html";
								} else {
									swal("删除失败", ReturnData, "warning");
								}
							}
						});
			});
}
// 设置地址默认
function SetUserAddressDefault(aid) {
	$
			.ajax({
				url : "http://www.tjfozoon.com/Web/Ajax/Ajax.ashx",
				type : "POST",
				cache : false,
				dataType : "text",
				data : {
					action : "SetUserAddressDefault",
					aid : aid
				},
				success : function(ReturnData) {
					if (ReturnData == "yes") {
						window.location.href = "http://www.tjfozoon.com/Login.html?rurl=/UserCenter/Address/List.html";
					} else {
						swal("设置失败", ReturnData, "warning");
					}
				}
			});
}
//用户信息修改


