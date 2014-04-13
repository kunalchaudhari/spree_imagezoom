//= require frontend/jqzoom
add_image_handlers = function() {};
$(document).ready(function(){
  var options = {
            zoomType: 'standard',
            lens:true,
            preloadImages: true,
            alwaysOn:false,
            zoomWidth: 600,
            zoomHeight: 500,
            xOffset:50,
            yOffset:0,
            position:'left',
            showEffect : 'fadein',
            hideEffect: 'fadeout'
  };
  $('.spree_jqzoom').jqzoom(options);
});