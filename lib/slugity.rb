require 'slugity/utilities'
require 'slugity/matchers'

module Slugity

	# Converts the given string into a slug
	#
	# @param string [String] the string to slugity
  # @param matcher [Symbol] the matcher to use
	# @return [String] the slug version of the provided string
  def slugity string, matcher=:default
    string = stringity(string, matcher).downcase
    string.gsub!( /[^a-z0-9\-\_]/, '' )
    return string
  end

  # Converts the given string with the provided matcher
  #
  # @param string [String]
  # @param matcher [Symbol] the matcher to use
  # @return [String] the converted version of the provided string
  def stringity string, matcher=:default
    string = Util.trim_string( string )

    Slugity::Matchers.use(matcher).each do |match, replacement|
      string.gsub!( match, replacement )
    end

    return string
  end

end