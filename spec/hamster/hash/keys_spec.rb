require "spec_helper"
require "hamster/hash"
require "hamster/set"

describe Hamster::Hash do
  describe "#keys" do
    before do
      hash = Hamster.hash("A" => "aye", "B" => "bee", "C" => "see")
      @result = hash.keys
    end

    it "returns the keys as a set" do
      @result.should == Hamster.set("A", "B", "C")
    end

    it "returns frozen String keys" do
      @result.each { |s| s.should be_frozen }
    end
  end
end