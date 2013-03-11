require 'spec_helper'
require 'slugity'

describe Slugity do

  describe '#matchers' do

    it 'returns a hash table' do
      Slugity.matchers.class.should == Hash
    end

  end

  describe '#set_matcher' do
    include Slugity

    it 'allows custom matchers to be set' do
      Slugity.set_matcher( /\%/, 'percent' )

      slugity( "hello 20% of the world" ).should == "hello-20percent-of-the-world"

    end

    it 'allows matchers to be overwritten' do
      Slugity.set_matcher( /\+/, 'not-plus' )

      slugity( "one + one" ).should == "one-not-plus-one"
    end

  end
end