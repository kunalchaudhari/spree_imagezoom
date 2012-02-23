SpreeImagezoom
==============

Image zoom functionality for product photos. 

Implementation
--------------

It uses jquery and jqzoom by Marco Renzi (http://www.mind-projects.it/projects/jqzoom/) for zoom functionality.


Installation
------------

To use install from git:

    gem 'spree_imagezoom', :git => 'git://github.com/kunalchaudhari/spree_imagezoom.git'

Now bundle up with:

    bundle
    
Next, run the rake task that copies the necessary migrations and assets to your project:

    rake spree_imagezoom:install
    
Now you should be able to boot up your server with:

    rails s      
    
That's all!