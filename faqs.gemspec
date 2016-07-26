# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faqs/version'

Gem::Specification.new do |spec|
  spec.name          = "faqs"
  spec.version       = Faqs::VERSION
  spec.authors       = ["elitenomad"]
  spec.email         = ["stalin.pranava@gmail.com"]

  spec.summary       = %q{faqs gem primary purpose is to provide backend FAQ section content.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/elitenomad/faqs"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.5.0"
  spec.add_development_dependency "pry"

  spec.add_dependency "rails"
end
