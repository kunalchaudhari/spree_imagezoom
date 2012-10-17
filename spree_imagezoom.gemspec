# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_imagezoom'
  s.version     = '1.1.1'
  s.summary     = 'Product image zoom facility in SpreeCommerce'
  s.description = 'Product image zoom facility in SpreeCommerce'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Kunal K Chaudhari'
  s.email             = 'kunalchaudhari@gmail.com'
  s.homepage          = 'http://www.github.com/kunalchaudhari'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.2.0'
end
