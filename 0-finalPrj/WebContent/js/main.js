var jj = {};
jj.w = 0;
jj.myW = 767;
num = 0;
w_w = $(window).width();
w_h = $(window).height();


//初始化
jj.init = function(){
	jj.events();		//事件总体控制
}
//事件总体控制
jj.events = function(){
	jj.resize();		//窗口改变事件
	jj.nav();      //首页导航
	jj.num();
}
//窗口改变事件
jj.resize = function(){
	function resize(){
		if($(window).width() > 991){
			$('.nav').removeAttr("style"); 
			$('.nav-ico').removeClass('open');
		}
	}
	resize();
	$(window).resize(function(){
		//首页轮播图
		resize();
	});
}

//导航
jj.nav = function(){
    $('.nav-ico').click(function(){
      	if($(this).hasClass('open')){
      		$('.nav').slideUp();
      		$(this).removeClass('open');
      	}else{
      		$('.nav').slideDown();
      		$(this).addClass('open');
      	}
    })
    

}
//数量加减
jj.num = function(){
	$('.s-num .i-add').click(function(){
		$(this).parent('.s-num').find('input').val(function(){
			return Number($(this).val())+1;
		})
	})
	$('.s-num .i-red').click(function(){
		if($(this).parent('.s-num').find('input').val()!=1){
			$(this).parent('.s-num').find('input').val(function(){
				return Number($(this).val())-1;
			});
		}
	});
}

//dom加载完毕执行
$(function(){
	jj.init();
});