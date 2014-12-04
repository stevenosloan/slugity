require 'spec_helper'
require 'slugity'

describe Slugity::Convert do

  describe "::slug" do
    it "returns a properly formatted string" do
      test_strings.each do |input,output|
        expect( Slugity::Convert.slug( input ) ).to eq output
      end
    end

    it "handles non-strings like numbers" do
      expect( Slugity::Convert.slug( 42 ) ).to eq "42"
      expect( Slugity::Convert.slug( 123.456 ) ).to eq "123456"
    end

    it "strips unrecognized characters" do
      expect( Slugity::Convert.slug( "a…‡†i".encode("UTF-8") ) ).to eq "ai"
    end
  end

  describe "::string" do
    it "does not strip unrecognized characters" do
      expect( Slugity::Convert.string("a…‡†i".encode("UTF-8")) ).to eq "a…‡†i"
    end
  end

end
