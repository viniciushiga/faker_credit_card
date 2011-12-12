# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "faker_credit_card/version"

Gem::Specification.new do |s|
  s.name        = "faker_credit_card"
  s.version     = Faker::CreditCard::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Vinicius Akio Higa"]
  s.email       = ["viniciushiga@gmail.com"]
  s.homepage    = "https://github.com/viniciushiga/faker_credit_card"
  s.summary     = %q{}
  s.description = %q{}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
