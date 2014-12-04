require 'spec_helper'
require 'slugity/utilities'

describe Slugity::Util do

  describe "#trim_string" do
    it "removes begining and ending spaces" do
      expect( Slugity::Util.trim_string( " hello world" ) ).to    eq "hello world"
      expect( Slugity::Util.trim_string( "hello world " ) ).to    eq "hello world"
      expect( Slugity::Util.trim_string( " hello world " ) ).to   eq "hello world"
      expect( Slugity::Util.trim_string( "  hello world  " ) ).to eq "hello world"
    end
  end
end
