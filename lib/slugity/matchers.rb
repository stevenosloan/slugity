module Slugity
  class Matchers

    # set default matchers
    # @return [Hash]
    def self.default
      {
        /\s|\// => '-',
        /\.|\'|\"|\<|\>|\,|\(|\)|\:/ => '',
        /\&/ => 'and',
        /\+/ => 'plus',
        /\=/ => 'equals'
      }
    end

    # instatiate a new matchers class
    # @param use_defaults? [Boolean] if the matcher should be seeded with defaults
    def initialize use_defaults=true
      @matchers = ( use_defaults ) ? self.default : {}
    end

  end
end