module Slugity

  # set default matchers
  @@matchers = {
    /\s|\// => '-',
    /\.|\'|\"|\<|\>|\,|\(|\)|\:/ => '',
    /\&/ => 'and',
    /\+/ => 'plus',
    /\=/ => 'equals'
  }

  class << self

    def set_matcher matcher, replacement
      @@matchers[matcher] = replacement
    end

    def matchers
      @@matchers
    end

  end

end