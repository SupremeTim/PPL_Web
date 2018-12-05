/**	
	* Template Name: MU Material
	* Version: 1.0	
	* Template Scripts
	* Author: MarkUps
	* Author URI: http://www.markups.io/

	Custom JS
	
	1. MOBILE MENU
	2. EXPERIENCE SLIDER (Owl Carousel)
	3. EDUCATION SLIDER (Owl Carousel)
	4. PORTFOLIO SLIDER
	5. COUNTER
	6. TESTIMONIAL SLIDER (Owl Carousel)	
	7. MENU SMOOTH SCROLLING
	8. PRELOADER
	9. CALL TO ABOUT
	10. BOTTOM TO UP 
	11. PARALLAX HEADER
	12. HIRE ME SCROLL
	
	
**/

jQuery(function($){


	/* ----------------------------------------------------------- */
	/*  1. Mobile MENU
	/* ----------------------------------------------------------- */

    jQuery(".button-collapse").sideNav();
    
	/* ----------------------------------------------------------- */
	/*  2. Experience SLider(Owl Carousel)
	/* ----------------------------------------------------------- */

	var owl = $("#owl-carousel"); 
    owl.owlCarousel({
        items : 4, //4 items above 1024px browser width
        itemsDesktop : [1024,3], //3 items between 1024px and 901px
        itemsDesktopSmall : [900,2], // betweem 900px and 601px
        itemsTablet: [600,1], //1 items between 600 and 0
        itemsMobile : 1 // itemsMobile disabled - inherit from itemsTablet option
    });
    // Slide Navigation
    jQuery(".next").click(function(){
        owl.trigger('owl.next');
    });

    jQuery(".prev").click(function(){
        owl.trigger('owl.prev');
    });


    /* ----------------------------------------------------------- */
	/*  3. EDUCATION SLIDER (Owl Carousel)
	/* ----------------------------------------------------------- */

	var owl1 = $("#owl-carousel1"); 
	owl1.owlCarousel({
	    items : 4, //4 items above 1024px browser width
	    itemsDesktop : [1024,3], //3 items between 1024px and 901px
	    itemsDesktopSmall : [900,2], // betweem 900px and 601px
	    itemsTablet: [600,1], //1 items between 600 and 0
	    itemsMobile : 1 // itemsMobile disabled - inherit from itemsTablet option
	});
	// Slide Navigation
	jQuery(".next1").click(function(){
	    owl1.trigger('owl.next');
	});

	jQuery(".prev1").click(function(){
	    owl1.trigger('owl.prev');
	});
	
    /* ----------------------------------------------------------- */
	/*  4. PORTFOLIO SLIDER
	/* ----------------------------------------------------------- */

	jQuery('#portfolio-list').mixItUp();	

	/* ----------------------------------------------------------- */
	/*  5. COUNTER
	/* ----------------------------------------------------------- */

	jQuery('.counter').counterUp({
        delay: 10,
        time: 1000
    });	  

	/* ----------------------------------------------------------- */
	/*  6. TESTIMONIAL SLIDER (Owl Carousel)
	/* ----------------------------------------------------------- */

	var owl2 = $("#owl-carousel2"); 
    owl2.owlCarousel({
        items : 2, //4 items above 1024px browser width
        itemsDesktop : [1024,2], //3 items between 1024px and 901px
        itemsDesktopSmall : [900,2], // betweem 900px and 601px
        itemsTablet: [600,1], //1 items between 600 and 0
        itemsMobile : 1 // itemsMobile disabled - inherit from itemsTablet option
    });

    // Slide Navigation
    jQuery(".next2").click(function(){
        owl2.trigger('owl.next');
    });

    jQuery(".prev2").click(function(){
        owl2.trigger('owl.prev');
    });
	 

	/* ----------------------------------------------------------- */
	/*  7. MENU SMOOTH SCROLLING
	/* ----------------------------------------------------------- */ 
	
	//MENU SCROLLING WITH ACTIVE ITEM SELECTED

	// Cache selectors
	var lastId,
	topMenu = $(".menu-scroll"),
	topMenuHeight = topMenu.outerHeight()+13,
	// All list items
	menuItems = topMenu.find("a"),
	// Anchors corresponding to menu items
	scrollItems = menuItems.map(function(){
	  var item = $($(this).attr("href"));
	  if (item.length) { return item; }
	});

	// Bind click handler to menu items
	// so we can get a fancy scroll animation
	menuItems.click(function(e){
	  var href = $(this).attr("href"),
	      offsetTop = href === "#" ? 0 : $(href).offset().top-topMenuHeight+15;
	  jQuery('html, body').stop().animate({ 
	      scrollTop: offsetTop
	  }, 900);
	  e.preventDefault();
	});

	// Bind to scroll
	jQuery(window).scroll(function(){
	   // Get container scroll position
	   var fromTop = $(this).scrollTop()+topMenuHeight;
	   
	   // Get id of current scroll item
	   var cur = scrollItems.map(function(){
	     if ($(this).offset().top < fromTop)
	       return this;
	   });
	   // Get the id of the current element
	   cur = cur[cur.length-1];
	   var id = cur && cur.length ? cur[0].id : "";
	   
	   if (lastId !== id) {
	       lastId = id;
	       // Set/remove active class
	       menuItems
	         .parent().removeClass("active")
	         .end().filter("[href=#"+id+"]").parent().addClass("active");
	   }           
	})
    
	/* ----------------------------------------------------------- */
	/*  8. PRELOADER 
	/* ----------------------------------------------------------- */ 

	jQuery(window).load(function() { // makes sure the whole site is loaded
      $('.progress').fadeOut(); // will first fade out the loading animation
      $('#preloader').delay(100).fadeOut('slow'); // will fade out the white DIV that covers the website.
      $('body').delay(100).css({'overflow':'visible'});
    })
	  
	/* ----------------------------------------------------------- */
	/* 9. CALL TO ABOUT
	/* ----------------------------------------------------------- */ 
	
	jQuery(".call-to-about").click(function() {
    jQuery('html,body').animate({
        scrollTop: $("#about").offset().top},
        'slow');
	});

	/* ----------------------------------------------------------- */
	/* 10. BOTTOM TO UP
	/* ----------------------------------------------------------- */ 

	jQuery(".up-btn").click(function() {
    jQuery('html,body').animate({
        scrollTop: $("#header").offset().top},
        'slow');
	});

	/* ----------------------------------------------------------- */
	/* 11. PARALLAX HEADER
	/* ----------------------------------------------------------- */ 

	jQuery('.parallax').parallax();

	/* ----------------------------------------------------------- */
	/* 12. HIRE ME SCROLL
	/* ----------------------------------------------------------- */ 

	
});

$(".navbar-fixed nav").css("background-color", "#1f531d")

      var hasWebgl = (function() {
          try { return !!window.WebGLRenderingContext
            && !!(document.createElement('canvas').getContext('webgl')
            || document.createElement('canvas').getContext('experimental-webgl'));
          } catch(e) {
            return false;
          }
        })();

        $(function() {

          var container = $('#canvas')[0];

          Two.Resolution = 24;

          var svg = new Two({
            width: 400,
            height: 400,
          }).appendTo(container);

          var eyes = [
            makeEye(svg),
          ];

          eyes[0].domElement = svg.renderer.domElement;

          var releaseEyes = _.debounce(function() {
            _.each(eyes, function(eye) {
              eye.ball.destination.clear();
            });
          }, 1000);

          var $window = $(window)
            .bind('mousemove', mousemove)
            .bind('touchmove', function(e) {
              var touch = e.originalEvent.changedTouches[0];
              mousemove({
                clientX: touch.pageX,
                clientY: touch.pageY
              });
              return false;
            });

          svg.bind('update', function() {
            var eye = eyes[0];
            eye.ball.translation.x += (eye.ball.destination.x - eye.ball.translation.x) * 0.0625;
            eye.ball.translation.y += (eye.ball.destination.y - eye.ball.translation.y) * 0.0625;
          }).play();

          function mousemove(e) {

            var mouse = new Two.Vector(e.clientX, e.clientY);
            _.each(eyes, function(eye) {
              var rect = eye.domElement.getBoundingClientRect();
              var center = {
                x: rect.left + rect.width / 2,
                y: rect.top + rect.height / 2
              };
              var theta = Math.atan2(mouse.y - center.y, mouse.x - center.x);
              var distance = mouse.distanceTo(center);
              var pct = distance / $window.width();
              var radius = 75 * pct;
              eye.ball.destination.set(radius * Math.cos(theta), radius * Math.sin(theta));
            });

            releaseEyes();

          }

          function makeEye(two, color) {

            var ball = two.makeGroup();
            var eye = two.makeGroup();

            var retina = two.makeCircle(0, 0, two.height / 4);
            retina.fill = color || getRandomColor();
            retina.noStroke();

            var pupil = two.makeCircle(0, 0, two.height / 6);
            pupil.fill = '#333';
            pupil.linewidth = 10;
            pupil.noStroke();
            var reflection = two.makeCircle(two.height / 12, - two.height / 12, two.height / 12)
            reflection.fill = 'rgba(255, 255, 255, 0.9)';
            reflection.noStroke();

            var lid = two.makeEllipse(0, 0, two.height / 3, two.height / 4);

            var points = [
              new Two.Vector(0, two.height / 2),
              new Two.Vector(0, 0),
              new Two.Vector(two.width, 0),
              new Two.Vector(two.width, two.height / 2)
            ];
            var midpoint = Math.round(lid.vertices.length / 2) - 1;
            var topbrow = lid.vertices.slice(midpoint).reverse();
            for (var i = 0; i < topbrow.length; i++) {
              var v = topbrow[i];
              points.push(new Two.Vector(v.x + two.width / 2, v.y + two.height / 2));
            }
            for (var i = 0; i < points.length; i++) {
              var v = points[i];
              v.x -= two.width / 2;
              v.y -= two.height / 2;
            }
            var topMask = two.makePath(points);
            topMask.fill = 'white';
            topMask.noStroke();

            points = [
              new Two.Vector(0, two.height / 2),
              new Two.Vector(0, two.height),
              new Two.Vector(two.width, two.height),
              new Two.Vector(two.width, two.height / 2)
            ];
            var botbrow = [lid.vertices[lid.vertices.length - 1]].concat(lid.vertices.slice(0, midpoint + 1));
            for (var i = 0; i < botbrow.length; i++) {
              var v = botbrow[i];
              points.push(new Two.Vector(v.x + two.width / 2, v.y + two.height / 2));
            }
            for (var i = 0; i < points.length; i++) {
              var v = points[i];
              v.x -= two.width / 2;
              v.y -= two.height / 2;
            }
            var botMask = two.makePath(points);
            botMask.fill = 'white';
            botMask.noStroke();

            lid.remove();
            lid = two.makeEllipse(0, 0, two.height / 3, two.height / 4);
            lid.stroke = '#333';
            lid.linewidth = 15;
            lid.noFill();

            ball.add(retina, pupil, reflection);
            ball.destination = new Two.Vector();

            eye.add(ball, topMask, botMask, lid);
            eye.translation.set(two.width / 2, two.height / 2)

            eye.masks = [topbrow, botbrow];
            eye.ball = ball;

            return eye;

          }

          function getRandomColor() {
            return 'rgba('
              + Math.floor(Math.random() * 255) + ','
              + Math.floor(Math.random() * 255) + ','
              + Math.floor(Math.random() * 255) + ','
              + 0.66 + ')';
          }

        });
