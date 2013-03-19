require File.expand_path( "../lib/slugity/version", __FILE__ )

Gem::Specification.new do |s|

  s.name          = 'slugity'
  s.version       = Slugity::VERSION
  s.platform      = Gem::Platform::RUBY
  
  s.summary       = 'Yet another slugging gem'
  s.description   = %q{ Yet another slugging gem, convert a string to a slug with the option for custom mappings. }
  s.authors       = ["Steven Sloan"]
  s.email         = 'stevenosloan@gmail.com'
  s.homepage      = "http://github.com/stevenosloan/slugity"
  
  s.files         = Dir["{lib}/**/*.rb"]
  s.test_files    = Dir["spec/**/*.rb"]
  s.require_path  = "lib"
  
end