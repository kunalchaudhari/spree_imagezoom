SpreeImagezoom
==============

Image zoom functionality for product photos in SpreeCommerce.

See the TODO file

Implementation
--------------

It uses jquery and jqzoom by Marco Renzi (http://www.mind-projects.it/projects/jqzoom/) for zoom functionality.

Default options used for jqzoom

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

Installation
------------

To use install from git:

    gem 'spree_imagezoom', :git => 'git://github.com/kunalchaudhari/spree_imagezoom.git'

Now bundle up with:

    bundle
    
Next, run the install generator to append the spree_imagezoom js and css 

    rails g spree_imagezoom:install
    
Now you should be able to boot up your server with:

    rails s      
    
That's all!