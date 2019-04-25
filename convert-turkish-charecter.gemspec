
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "convert/turkish/charecter/version"

Gem::Specification.new do |spec|
  spec.name          = "convert-turkish-charecter"
  spec.version       = Convert::Turkish::Charecter::VERSION
  spec.authors       = ["Bünysmin ORHAN"]
  spec.email         = ["bunyamin.orhan@hotmail.com"]

  spec.summary       = %q{this gem turkish word char do upcase,downcase or capitalize}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"



  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
