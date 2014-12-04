require 'spec_helper'
require 'slugity/extend_string'

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
