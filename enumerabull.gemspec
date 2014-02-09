# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "enumerabull"
  spec.version       = "0.0.1"
  spec.authors       = ["Three If By Whiskey"]
  spec.email         = ["3ifbyw@gmail.com"]
  spec.summary       = %[Enumerabull pollutes Kernelspace with inverted versions of Enumerable's instance methods. It's like unleashing a bull in your Ruby shop to get "functional programming".]
  spec.license       = "WTFPL"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(/spec/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
