require 'slugity/utilities'
require 'slugity/matchers'

module Slugity

	# Converts the given string into a slug
	#
	# @param string [String] the string to slugity
	# @return [String] the slug version of the provided string
  def slugity string
  	string = Util.trim_string( string ).downcase

    Slugity::Matchers.default.each do |match,replacement|
      string.gsub!( match, replacement )
    end

    string.gsub!( /[^a-zA-Z0-9\-\_]/, '' )

    return string
  end

end