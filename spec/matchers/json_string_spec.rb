# encoding: utf-8

require 'spec_helper'
require 'slugity'


describe ":json_string matcher" do
  include Slugity

  test_strings = {
    %q{a "quote" \ or so} => %q{a \"quote\" \\\\ or so}
  }

  it "correctly escapes strings" do
    test_strings.each do |input,output|
      stringity( input, :json_string ).should == output
    end
  end

end