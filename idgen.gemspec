# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "idgen"
  spec.version       = Idgen::VERSION
  spec.authors       = ["Gytis Daujotas"]
  spec.email         = ["gytdau@gmail.com"]

  spec.summary       = %q{A gem for generating easy-to-remember IDs out of nouns, adjectives and verbs.}
  spec.homepage      = "https://github.com/gytdau/idgen"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
