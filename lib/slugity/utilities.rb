module Slugity
  module Util

    class << self

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