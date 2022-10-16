# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require File.expand_path('../lib/lushao/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "lushao"
  spec.version       = Lushao::VERSION
  spec.authors       = ["Louis Perello"]
  spec.email         = ["contact@lokhi.xyz"]


  spec.summary       = %q{A tiny ruby wrapper around Lusha API }
  spec.description   = %q{A tiny ruby wrapper around Lusha API. The Lusha API enables you to enrich and authenticate the business profiles you utilize and offer. }
  spec.license       = "MIT"
  spec.homepage    = 'https://github.com/lokhi/lushao.git'
  spec.metadata    = { "source_code_uri" => "https://github.com/lokhi/lushao.git" }

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

  spec.add_development_dependency "bundler", "~> 2.3"
  spec.add_development_dependency "rake", ">= 12.3.3"

  spec.required_ruby_version = ">= 1.9.3"

  spec.add_dependency "faraday"
  spec.add_dependency "json"
end
