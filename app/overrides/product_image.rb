# <a href="images/BIGIMAGE.JPG" class="MYCLASS" title="MYTITLE">
#   <img src="images/SMALLIMAGE.JPG" title="IMAGE TITLE">
# </a>
Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "product-image",
                     :set_attributes => "div#main-image",
                     :attributes => {:id => "prod-image"})
