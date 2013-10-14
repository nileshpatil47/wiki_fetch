# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wiki_fetch/version'

Gem::Specification.new do |spec|
  spec.name          = "wiki_fetch"
  spec.version       = WikiFetch::VERSION
  spec.authors       = ["nileshpatil47"]
  spec.email         = ["nileshpatil47@yahoo.com"]
  spec.description   = %q{wiki data fetch gem}
  spec.summary       = %q{It can be used as wiki text and link wiki_fetch}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "mechanize", "~> 2.7.2"
  spec.add_development_dependency "rake"
end
