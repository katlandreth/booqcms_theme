# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'booqcms_theme/version'

Gem::Specification.new do |spec|
  spec.name          = "booqcms_theme"
  spec.version       = BooqcmsTheme::VERSION
  spec.authors       = ["Kat Landreth"]
  spec.email         = ["katlandreth@gmail.com"]

  spec.summary       = "Shared assets for Booqcms engines and main app"
  spec.description   = "Shared assets for Booqcms engines and main app"
  spec.homepage      = "https://github.com/katlandreth/booqcms_theme"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = Dir["**/*"].select { |f| File.file? f } - Dir['*.gem']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency "sass-rails"
end
