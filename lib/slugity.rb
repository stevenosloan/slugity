require 'slugity/utilities'

module Slugity

	# Converts the given string into a slug
	#
	# @param string [String] the string to slugity
	# @return [String] the slug version of the provided string
  def slugity string
  	string = Util.trim_string( string )

    string.downcase.gsub(/\s|\//, '-').gsub(/\.|\'|\"|\<|\>|,|\(|\)|\:/,'').gsub(/\&/,'and').gsub(/\+/,'plus').gsub(/\=/,'equals')
  end

end