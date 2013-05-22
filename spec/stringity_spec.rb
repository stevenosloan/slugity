# encoding: utf-8

require 'spec_helper'
require 'slugity'

describe Slugity do

  include Slugity

  describe "#stringity()" do
    it "does not strip unrecognized characters" do
      stringity( "a…‡†i".encode("UTF-8") ).should == "a…‡†i"
    end
  end

end