# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'epicmix/version'

Gem::Specification.new do |spec|
  spec.name          = "epicmix"
  spec.version       = Epicmix::VERSION
  spec.authors       = ["Joseph Silvashy"]
  spec.email         = ["jpsilvashy@gmail.com"]
  spec.summary       = %q{A Ruby gem for accessing your EpicMix data.}
  spec.description   = %q{A Ruby gem for accessing your EpicMix data.}
  spec.homepage      = "https://github.com/jpsilvashy/epicmix"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"

end
