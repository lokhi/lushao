# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require File.expand_path('../lib/lushao/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "lushao"
  spec.version       = Lushao::VERSION
  spec.authors       = ["Louis Perello"]
  spec.email         = ["perello.louis@gmail"]


  spec.summary       = %q{A tiny ruby wrapper around Lusha API }
  spec.description   = %q{A tiny ruby wrapper around Lusha API. The Lusha API enables you to enrich and authenticate the business profiles you utilize and offer. }
  spec.license       = "MIT"

  spec.files = [
   "Gemfile",
   "Rakefile",
   "lib/lushao.rb",
   "lib/lushao/api.rb",
   "lib/lushao/person.rb",
   "lib/lushao/version.rb",
   "bin/console",
   "bin/setup"
 ]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "typhoeus"

  spec.required_ruby_version = ">= 1.9.3"

  spec.add_dependency "faraday"
  spec.add_dependency "json"
end
