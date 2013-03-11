require 'spec_helper'
require 'slugity'

test_strings = {
  "Hello World" => "hello-world",
  "one Flew_South" => "one-flew_south",
  "Attr: Halp" => "attr-halp",
  "Freddie & Bananas" => "freddie-and-bananas",
  "One + Two = Three" => "one-plus-two-equals-three",
  " hello world" => "hello-world",
  "hello world " => "hello-world"
}

describe Slugity do

  include Slugity

  describe "#slugity()" do
    it "returns a properly formatted string" do
      test_strings.each do |input,output|
        slugity( input ).should == output
      end
    end
  end

end