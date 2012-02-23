# <a href="images/BIGIMAGE.JPG" class="MYCLASS" title="MYTITLE">
#   <img src="images/SMALLIMAGE.JPG" title="IMAGE TITLE">
# </a>
Deface::Override.new(:virtual_path => "spree/products/_image",
                      :name => "product-image-zoom",
                      :surround => "code[erb-loud]:contains('product_image')") do
                        "<a href='<%= @product.images.empty? ? \"javascript:void(0);\" : @product.images.first.attachment.url(:original) %>' rel='product-gallery' class='<%= @product.images.empty? ? \"javascript:void(0);\" : \"spree_jqzoom\" %>'><%= render_original %></a><div class='clearfix'></div>"
                      end