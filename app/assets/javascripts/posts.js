function handleDropdown() {
	var showContributor = document.querySelector('.show-contributor__check');
	var contributorDropdown = document.querySelector('.field.contributor-id');

	if (showContributor.checked) contributorDropdown.classList.add('show');

	showContributor.addEventListener('change', toggleDropdown);
	
	function toggleDropdown(e) {
		if (e.target.checked) {
			contributorDropdown.classList.add('show');
		} else {
			contributorDropdown.classList.remove('show');
		}
	}
}

// Paloma page specific handlers
var PostsController = Paloma.controller('Posts');

PostsController.prototype.new = function(){
	(function(){
		handleDropdown();
	})();
};

PostsController.prototype.edit = function(){
	(function(){
		handleDropdown();
	})();
};

PostsController.prototype.show = function(){
	(function(){
		// Launch Prism highlighting
		Prism.highlightAll();
	})();
};