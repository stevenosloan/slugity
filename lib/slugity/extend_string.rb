require 'slugity'

class String
	include Slugity

	def to_slug
		slugity self
	end

end