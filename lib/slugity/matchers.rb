module Slugity
  module Matchers

    @@matchers = {
      # define the default matchers
      default: {
        /\s|\// => '-',
        /\.|\'|\"|\<|\>|\,|\(|\)|\:/ => '',
        /\&/ => 'and',
        /\+/ => 'plus',
        /\=/ => 'equals'
      }
    }

    # fetch a matcher
    # @param key [Symbol]
    # @return [Hash]
    def self.use key
      @@matchers[key]
    end

    # add a matcher hash
    # @param key [Symbol]
    # @param use_default [Boolean]
    # @param options [Hash]
    def self.add key, use_default=true, options={}
      if use_default
        options = @@matchers[:default].merge(options)
      end
      @@matchers[key] = options
    end

  end
end