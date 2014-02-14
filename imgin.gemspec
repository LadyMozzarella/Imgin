
# to do:
# s.files any more files to list - see line 22 below
# 
# more dependencies? uri and cgi?

Gem::Specification.new do |s|
  s.name        = 'imgin'
  s.version     = '0.0.1.pre'
  s.date        = '2014-02-14'
  s.summary     = "Imgin"
  s.description = "returns a URL for a sample image based on a given search word or phrase"
  s.authors     = ["José Menor, Brittany Mazza, Mason O'Neal, Iván Sued"]
  s.files       = ["lib/imgin.rb"]
  s.add_runtime_dependency "nokogiri",
    ["= 1.6.1"]
  s.add_runtime_dependency "rspec",
    ["= 2.14.1"]

  # open-uri is included in ruby
  # s.add_runtime_dependency "open-uri",
  #   ["= 1.1.0"]

  # ANY MORE in s.files?
  # s.files       = [ "lib/hola/translator.rb"]

  # s.email       = ' whose? '
  # s.homepage    =
  #   'http://rubygems.org/gems/??'
  # s.license       = '??'