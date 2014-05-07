
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
end