require 'spec_helper'

describe "Visiting product" do
  include_context "custom products"
  
  before(:each) do
    visit spree.product_path( :id => "ruby-on-rails-ringer-t-shirt")
  end
  
  it "should add spree_jqzoom class to product main image" do
    page.all('#main-image a.spree_jqzoom').size.should == 1
  end
  
  it "should add rel attribute to product thumbnails" do
    page.all('#product-thumbnails a[rel*="gallery"]').size.should == 2
  end
  
end
