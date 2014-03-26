# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ovpnmcgen/version'

Gem::Specification.new do |spec|
  spec.name          = "ovpnmcgen.rb"
  spec.version       = Ovpnmcgen::VERSION
  spec.authors       = ["Ronald Ip"]
  spec.email         = ["myself@iphoting.com"]
  spec.summary       = Ovpnmcgen::SUMMARY
  spec.description   = "This utility generates configuration profiles that enables VPN-on-Demand, as documented by Apple in https://developer.apple.com/library/ios/featuredarticles/iPhoneConfigurationProfileRef/Introduction/Introduction.html#//apple_ref/doc/uid/TP40010206-CH1-SW27"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.bindir = 'bin'

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency     "plist"
  spec.add_runtime_dependency     "commander", "~> 4.1"
end
