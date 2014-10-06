# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'product_code/version'

Gem::Specification.new do |spec|
  spec.name          = "product_code"
  spec.version       = ProductCode::VERSION
  spec.authors       = ["Chien Kuo"]
  spec.email         = ["chien.cc.kuo@gmail.com"]
  spec.description   = %q{validate upc/ean/gtin code}
  spec.summary       = %q{validate upc/ean/gtin code}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
end
