$(function () {
		var headerHight = 0;
		$('a[href^=#]').click(function(){
				var href= $(this).attr("href");
				var target = $(href == "#" || href == "" ? 'html' : href);
				var position = target.offset().top-headerHight;
				$("html, body").animate({scrollTop:position}, 550, "swing");
				return false;
		});
});



$(function(){
	$(".menu_btn").on("click", function() {
		$(".menu").slideToggle();
	});
});
