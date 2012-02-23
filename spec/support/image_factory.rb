FactoryGirl.define do
  factory :product_image, :class => Spree::Image do
    attachment_file_name '4.jpg'
  end
end