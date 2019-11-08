$(function () {
  'user strict';

  $('#menu').slicknav({
    'label':'القائمة الرئيسية',
    'duplicate': true,
    'easingOpen': 'swing',
    'prependTo': '.down_nav',
    'showChildren': false
  });

  $(window).scroll(function() {
    if ($(this).scrollTop() > 0) {
      $('.down_nav').slideUp();
    } else {
      $('.down_nav').slideDown();
    }
  });
    // $('.live-title').keyup(function (){
    //   $('.live-preview .captionone h3').text($(this).val());
    // });

    $('.live').keyup(function (){
      $('.live-preview .captionone h3').text($(this).val());
    });

  // Dashboard

	// $('.toggle-info').click(function () {
  //
	// 	$(this).toggleClass('selected').parent().next('.uk-card-body').fadeToggle(100);
  //
  //
  //   if ($(this).hasClass('selected')) {
  //
	// 		$(this).html('<i class="fas fa-plus fa-1x"></i>');
  //
	// 	} else {
  //
	// 		$(this).html('<i class="fas fa-minus fa-1x"></i>');
  //
	// 	}
  //
	// });

  // $('.uk-navbar-nav li a').click( function() {
  //
  //     $(this).parent().addClass('acitve');
  //     $(this).parent().siblings().removeClass('acitve');
  //
  // });

  // Hide Placeholder On Form Focus

	$('[placeholder]').focus(function () {

		$(this).attr('data-text', $(this).attr('placeholder'));

		$(this).attr('placeholder', '');

	}).blur(function () {

		$(this).attr('placeholder', $(this).attr('data-text'));

	});


});

$('.dropdown-toggle').click(function(e) {
  if ($(document).width() > 768) {
    e.preventDefault();

    var url = $(this).attr('href');


    if (url !== '#') {

      window.location.href = url;
    }

  }



});



var mySwiper = new Swiper ('.swiper-container', {
    // Optional parameters
    autoplay: {
      delay: 3000,
    },
  })










  window.addEventListener("load", function() {

	// store tabs variable
	var myTabs = document.querySelectorAll("ul.nav-tabs > li");

	function myTabClicks(tabClickEvent) {

		for (var i = 0; i < myTabs.length; i++) {
			myTabs[i].classList.remove("active_tab");
		}

		var clickedTab = tabClickEvent.currentTarget;

		clickedTab.classList.add("active_tab");

		tabClickEvent.preventDefault();

		var myContentPanes = document.querySelectorAll(".tab-pane");

		for (i = 0; i < myContentPanes.length; i++) {
			myContentPanes[i].classList.remove("active_tab");
		}

		var anchorReference = tabClickEvent.target;
		var activePaneId = anchorReference.getAttribute("href");
		var activePane = document.querySelector(activePaneId);

		activePane.classList.add("active_tab");

	}

	for (i = 0; i < myTabs.length; i++) {
		myTabs[i].addEventListener("click", myTabClicks)
	}
});
