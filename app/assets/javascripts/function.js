
//�y�[�W�������N�̂��꒲��

$(function () {
    var headerHight = 0; //�w�b�_�̍���
    $('a[href^=#]').click(function(){
        var href= $(this).attr("href");
        var target = $(href == "#" || href == "" ? 'html' : href);
        var position = target.offset().top-headerHight; //�w�b�_�̍������ʒu�����炷
        $("html, body").animate({scrollTop:position}, 550, "swing");
        return false;
    });
});



//�X�}�z�p���j���[

$(function(){
	$(".menu_btn").on("click", function() {
		$(".menu").slideToggle();
	});
});