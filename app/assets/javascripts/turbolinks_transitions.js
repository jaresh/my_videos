document.addEventListener('page:change', function() {
        document.getElementById('primary-content').className += 'animated fadeInDown';
        $('.flexslider').flexslider({
    animation: "slide",
    animationLoop: true,
    itemWidth: 100,
    itemMargin: 5,
    prevText: '',
    nextText: '',
    controlNav: false,
    minItems: 1,
    move: 1, 
    maxItems: 3
  });
});

document.addEventListener('page:load', function() {
        document.getElementById('primary-content').className += 'animated fadeInDown';
        $('.flexslider').flexslider({
    animation: "slide",
    animationLoop: true,
    itemWidth: 100,
    itemMargin: 5,
    prevText: '',
    nextText: '',
    controlNav: false,
    minItems: 1,
    move: 1, 
    maxItems: 3
  });
});