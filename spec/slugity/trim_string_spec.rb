require 'spec_helper'
require 'slugity/utilities'

describe Slugity::Util do

  describe "#trim_string" do
    it "removes begining and ending spaces" do
      Slugity::Util.trim_string( " hello world" ).should    == "hello world"
      Slugity::Util.trim_string( "hello world " ).should    == "hello world"
      Slugity::Util.trim_string( " hello world " ).should   == "hello world"
      Slugity::Util.trim_string( "  hello world  " ).should == "hello world"
    end
  end
end