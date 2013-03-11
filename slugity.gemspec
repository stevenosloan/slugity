require File.expand_path( "../lib/slugity/version", __FILE__ )

Gem::Specification.new do |s|

  s.name          = 'slugity'
  s.version       = Slugity::VERSION
  s.platform      = Gem::Platform::RUBY
  
  s.summary       = 'Another slugging gem'
  s.description   = %q{ A slugging gem that doesn't assume you want to extend the String class, untill you do }
  s.authors       = ["Steven Sloan"]
  s.email         = 'stevenosloan@gmail.com'
  s.homepage      = "http://github.com/stevenosloan/slugity"
  
  s.files         = Dir["{lib}/**/*.rb"]
  s.test_files    = Dir["spec/**/*.rb"]
  s.require_path  = "lib"
  
end