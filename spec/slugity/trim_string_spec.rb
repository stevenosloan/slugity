require 'spec_helper'
require File.expand_path("../../../lib/slugity/utilities", __FILE__)

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