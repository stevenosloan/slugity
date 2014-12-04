# encoding: utf-8

require 'spec_helper'
require 'slugity'
require 'support/test_strings'

describe Slugity do
  include Slugity

  describe "#slugity()" do
    it "returns a properly formatted string" do
      test_strings.each do |input,output|
        expect( slugity( input ) ).to eq output
      end
    end

    it "handles non-strings like numbers" do
      expect( slugity( 42 ) ).to eq "42"
      expect( slugity( 123.456 ) ).to eq "123456"
    end

    it "strips unrecognized characters" do
      expect( slugity( "a…‡†i".encode("UTF-8") ) ).to eq "ai"
    end
  end

end
