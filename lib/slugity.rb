require 'slugity/utilities'
require 'slugity/matchers'

module Slugity

	# Converts the given string into a slug
	#
	# @param string [String] the string to slugity
  # @param matcher [Symbol] the matcher to use
	# @return [String] the slug version of the provided string
  def slugity string, matcher=:default
  	string = Util.trim_string( string ).downcase

    Slugity::Matchers.use(matcher).each do |match,replacement|
      string.gsub!( match, replacement )
    end

    string.gsub!( /[^a-zA-Z0-9\-\_]/, '' )

    return string
  end

end