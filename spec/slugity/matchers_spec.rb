require 'spec_helper'
require 'slugity'

describe Slugity::Matchers do
  include Slugity

  describe '#default_matchers' do

    it 'returns a hash table' do
      expect( Slugity::Matchers.use(:default).class ).to eq Hash
    end

  end

  describe '#set_matcher' do

    it 'allows custom matchers to be set' do
      Slugity::Matchers.add :percent, true, {
        /\%/ => 'percent'
      }

      expect( slugity( "hello 20% of the world", :percent ) ).to eq "hello-20percent-of-the-world"

    end

    it 'allows matchers to be overwritten' do
      Slugity::Matchers.add :plus, true, {
        /\+/ => 'not-plus'
      }

      expect( slugity( "one + one", :plus ) ).to eq "one-not-plus-one"
    end

  end
end
