$(function(){
	$(".banner_pager li").mouseover(function(){
		var width = $ (".banner_display").width()
		var index = $ (this).index()
		var offset = width*index*(-1)
		$(".banner_inner").animate({'left':offset+"px"},800)
		$(this).addClass("on")
		$(this).siblings().removeClass("on")
	})
})
