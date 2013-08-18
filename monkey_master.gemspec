# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'monkey_master/version'

Gem::Specification.new do |spec|
  spec.name          = "monkey_master"
  spec.version       = MonkeyMaster::VERSION
  spec.authors       = ["Lukas Nagl"]
  spec.email         = ["lukas.nagl@innovaptor.com"]
  spec.description   = %q{A tool for conveniently employing Android adb monkeys.}
  spec.summary       = %q{A tool for conveniently employing Android adb monkeys.}
  spec.homepage      = "https://github.com/j4zz/monkey_master"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end