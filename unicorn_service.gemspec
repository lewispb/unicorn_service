# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'unicorn_service/version'

Gem::Specification.new do |spec|
  spec.name          = "unicorn_service"
  spec.version       = UnicornService::VERSION
  spec.authors       = ["max-konin"]
  spec.email         = ["mk@kernel-corp.com"]
  spec.summary       = %q{Create unicorn service on linux server through capistrano.}
  spec.description   = %q{Capistrano plugin that provide opportunity to create unicorn service for autostart unicorn }
  spec.homepage      = "https://github.com/max-konin/unicorn_service.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "unicorn"
  spec.add_runtime_dependency     "capistrano", "< 3.0"
end
