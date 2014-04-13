# <a href="images/BIGIMAGE.JPG" class="MYCLASS" title="MYTITLE">
#   <img src="images/SMALLIMAGE.JPG" title="IMAGE TITLE">
# </a>
Deface::Override.new(:virtual_path => "spree/products/_image",
                      :name => "product-image-zoom",
                      :surround => "erb[loud]:contains('product_image')",
                      partial: 'spree/products/zoom/image' )
