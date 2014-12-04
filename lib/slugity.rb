require_relative 'slugity/utilities'
require_relative 'slugity/matchers'
require_relative 'slugity/convert'

module Slugity

  # Converts the given string into a slug
  #
  # @param string [String] the string to slugity
  # @param matcher [Symbol] the matcher to use
  # @return [String] the slug version of the provided string
  def slugity string, matcher=:default
    Slugity::Convert.slug string, matcher
  end

  # Converts the given string with the provided matcher
  #
  # @param string [String]
  # @param matcher [Symbol] the matcher to use
  # @return [String] the converted version of the provided string
  def stringity string, matcher=:default
    Slugity::Convert.string string, matcher
  end

end
