# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'action_view_csv/version'

Gem::Specification.new do |spec|
  spec.name          = "action_view_csv"
  spec.version       = ActionViewCsv::VERSION
  spec.authors       = ["Mathieu Jobin"]
  spec.email         = ["mathieu@justbudget.com"]
  spec.summary       = %q{ActionView template handlers for converting csv into an html table}
  spec.description   = %q{...}
  spec.homepage      = "https://github.com/somekool/action_view_csv"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
