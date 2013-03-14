require 'spec_helper'
require File.expand_path("../../lib/slugity/extend_string", __FILE__)

describe String do

	describe "#to_slug" do
		it "should have been included on String" do
			"hello world".to_slug.should == "hello-world"
		end
    it "lets you pass custom matchers" do
      Slugity::Matchers.add :plus, true, {
        /\+/ => 'not-plus'
      }
      "one + one".to_slug(:plus).should == "one-not-plus-one"
    end
	end

end