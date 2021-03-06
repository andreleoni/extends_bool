
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "extends_bool/version"

Gem::Specification.new do |spec|
  spec.name          = "extends_bool"
  spec.version       = ExtendsBool::VERSION
  spec.authors       = ["André Leoni"]
  spec.email         = ["andreluizleoni@gmail.com"]
  spec.summary       = %q{Adds ".to_bool" behaviour to String, Integer, Float, Array, Hash, TrueClass, FalseClass and NilClass.}
  spec.description   = %q{Adds ".to_bool" behaviour to String, Integer, Float, Array, Hash, TrueClass, FalseClass and NilClass.}
  spec.homepage      = "https://github.com/andreleoni/extends_bool"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.metadata = {
    "changelog_uri"     => "https://github.com/andreleoni/extends_bool/blob/master/CHANGELOG.md",
    "homepage_uri"      => "https://github.com/andreleoni/extends_bool",
    "source_code_uri"   => "https://github.com/andreleoni/extends_bool"
  }

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
