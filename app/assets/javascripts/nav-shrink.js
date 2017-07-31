(function () {
	$(document).on('scroll', function () {
		if ($(document).scrollTop() > 20) {
				$('body').addClass('shrink');
		} else {
			$('body').removeClass('shrink');
		}
	});
})();
