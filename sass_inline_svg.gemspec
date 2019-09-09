# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sassc_inline_svg/version'

Gem::Specification.new do |spec|
  spec.name          = "sassc_inline_svg"
  spec.version       = SassCInlineSvg::VERSION
  spec.authors       = ["Wouter van der Meulen"]
  spec.email         = ["info@clikex.dev"]
  spec.summary       = %q{Inline url-encoded SVG with SassC}
  spec.description   = %q{Inline url-encoded SVG with SassC. Optional variable string replacement included! Based on franzheidl/sass-inline-svg.}
  spec.homepage      = "https://github.com/ClikeX/sassc-inline-svg"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
