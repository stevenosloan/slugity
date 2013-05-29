module Slugity
  module Util

    class << self

      def normalize_string string
        trim_string(string.to_s)
      rescue NoMethodError
        raise ArgumentError, "You must pass an object that respond to #to_s"
      end


      # Trims begining and ending spaces from the string
      #
      # @param string [String]
      # @return [String] the string without begining and ending spaces
      def trim_string string

        # capture spaces at the begining or end of the string
        pattern = /(^\s+|\s+$)/

        # strip characters that match the pattern
        string.gsub( pattern, '' )
      end

    end

  end
end