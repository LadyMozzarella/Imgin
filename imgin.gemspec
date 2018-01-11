# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "Imgin/version"

Gem::Specification.new do |s|
  s.name          = 'imgin'
  s.version       = Imgin::VERSION
  s.date          = '2014-02-14'
  s.summary       = "Imgin"
  s.description   = "returns a URL for a sample image based on a given search word or phrase"
  s.authors       = ["José Menor, Brittany Mazza, Mason O'Neal, Iván Sued"]
  s.files         = ["lib/imgin.rb"]
  s.require_paths = ['lib']

  s.add_runtime_dependency "nokogiri",
    ["~> 1.8"]
  s.add_runtime_dependency "rspec",
    ["= 2.14.1"]
end
