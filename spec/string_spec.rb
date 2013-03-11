require 'spec_helper'
require File.expand_path("../../lib/slugity/extend_string", __FILE__)

describe String do

	describe "#to_slug" do
		it "should have been included on String" do
			"hello world".to_slug.should == "hello-world"
		end
	end

end