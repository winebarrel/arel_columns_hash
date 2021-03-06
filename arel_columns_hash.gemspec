# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arel_columns_hash/version'

Gem::Specification.new do |spec|
  spec.name          = "arel_columns_hash"
  spec.version       = ArelColumnsHash::VERSION
  spec.authors       = ["Genki Sugawara"]
  spec.email         = ["sgwr_dts@yahoo.co.jp"]
  spec.summary       = %q{Monkey patch for fix Arel column_cache.}
  spec.description   = %q{Monkey patch for fix Arel column_cache. (use AR model columns_hash)}
  spec.homepage      = "https://github.com/winebarrel/arel_columns_hash"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "arel", "~> 5.0"
  spec.add_dependency "activerecord", "~> 4.1.0"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 5.4"
end
