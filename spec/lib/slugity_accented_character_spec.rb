# encoding: utf-8

require 'spec_helper'
require 'slugity'
require 'support/accented_characters'


test_strings = {
  'ḡḡḡḡḡx' => 'gggggx'
}

describe Slugity do
  include Slugity

  describe "#slugity()" do
    it "returns the correctly mapped character" do
      accented_characters.each do |input,output|
        # p "matching #{input}"
        expect( slugity( input ) ).to eq output
      end
    end

    it "correctly handles strings of characters" do
      test_strings.each do |input,output|
        expect( slugity( input ) ).to eq output
      end
    end
  end
end
