require 'spec_helper'
require File.expand_path("../../lib/slugity/extend_string", __FILE__)

describe String do

	describe "#to_slug" do
		it "should have been included on String" do
			expect( "hello world".to_slug ).to eq "hello-world"
		end
    it "lets you pass custom matchers" do
      Slugity::Matchers.add :plus, true, {
        /\+/ => 'not-plus'
      }
      expect( "one + one".to_slug(:plus) ).to eq "one-not-plus-one"
    end
	end

end
