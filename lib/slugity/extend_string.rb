require 'slugity'

class String
	include Slugity

  # call slugity on self
  # @param key [Symbol] the matcher to use
  # @return [String] the slugged string
	def to_slug key=:default
		slugity self, key
	end

end