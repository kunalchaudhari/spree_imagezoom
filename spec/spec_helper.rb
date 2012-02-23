# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)

require 'rspec/rails'
require 'spree/url_helpers'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.join(File.dirname(__FILE__), "support/**/*.rb")].each {|f| require f }

# Requires factories defined in spree_core
require 'spree/core/testing_support/factories'

RSpec.configure do |config|
  # == Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr
  config.mock_with :rspec

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  config.include Spree::UrlHelpers
end

shared_context "custom products" do
  before(:each) do
    
    taxonomy = Factory(:taxonomy, :name => 'Categories')
    root = taxonomy.root
    clothing_taxon = Factory(:taxon, :name => 'Clothing', :parent_id => root.id)
    bags_taxon = Factory(:taxon, :name => 'Bags', :parent_id => root.id)
    mugs_taxon = Factory(:taxon, :name => 'Mugs', :parent_id => root.id)

    taxonomy = Factory(:taxonomy, :name => 'Brands')
    root = taxonomy.root
    apache_taxon = Factory(:taxon, :name => 'Apache', :parent_id => root.id)
    rails_taxon = Factory(:taxon, :name => 'Ruby on Rails', :parent_id => root.id)
    ruby_taxon = Factory(:taxon, :name => 'Ruby', :parent_id => root.id)
    product_image1 = Factory(:product_image, :attachment_file_name => '4.jpg')
    product_image2 = Factory(:product_image, :attachment_file_name => '5.jpg')

    Factory(:custom_product, :name => 'Ruby on Rails Ringer T-Shirt', :price => '17.99', :taxons => [rails_taxon, clothing_taxon], :images => [ product_image1, product_image2 ])
  end
end
