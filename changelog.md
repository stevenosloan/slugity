- add `Slugity::Convert::slug` and `Slugity::Convert::string` methods

# 1.0.1
- add license type to gemspec

# 1.0.0
- fix encoding issues for rubinius and mri 1.9.2
- setup travis ci

# 0.4.0
- guard against non-string arguments, explicitly running #to_s

# 0.3.0
- add a stringity method to allow for more general matching
- add a :json_string matcher

# 0.2.1
- move the default matchers to a separate file

# 0.2.0
- add basic support for accented characters

# 0.1.1
- remove default matchers that replace with an empty character

# 0.1.0
- add the ability to define custom matchers
- create a "safety net" of unknown characters (this *could* be a breaking change)

# 0.0.1
- add a `trim_string` method to remove leading and trailing spaces
