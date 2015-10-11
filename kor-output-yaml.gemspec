# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kor/output/yaml/version'

Gem::Specification.new do |spec|
  spec.name          = "kor-output-yaml"
  spec.version       = Kor::Output::Yaml::VERSION
  spec.authors       = ["ksss"]
  spec.email         = ["co000ri@gmail.com"]

  spec.summary       = %q{YAML output plugin for kor.}
  spec.description   = %q{YAML output plugin for kor.}
  spec.homepage      = "https://github.com/ksss/kor-output-yaml"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "kor"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rgot"
end
