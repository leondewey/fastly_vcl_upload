# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fastly_vcl_upload"
  spec.version       = "0.0.1"
  spec.authors       = ["Leon Dewey"]
  spec.email         = ["ldewey@au.westfield.com"]
  spec.summary       = %q{Upload VLC files from a given folder to fastly}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'tilt', "~> 1.1"
  spec.add_runtime_dependency 'fastly', "~> 1.1.4"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
