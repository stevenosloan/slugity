# encoding: utf-8
require 'slugity/matchers/default'

module Slugity
  module Matchers

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


