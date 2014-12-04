# encoding: utf-8

require 'spec_helper'
require 'slugity'

describe Slugity do

  include Slugity

  describe "#stringity()" do
    it "does not strip unrecognized characters" do
      expect( stringity("a…‡†i".encode("UTF-8")) ).to eq "a…‡†i"
    end
  end

end
