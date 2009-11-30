require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Hamster::Hash do

  describe ".[]" do

    describe "with nothing" do

      before do
        @hash = Hamster::Hash[]
      end

      it "returns an empty hash" do
        @hash.should be_empty
      end

    end

    describe "with an implicit hash" do

      before do
        @hash = Hamster::Hash["A" => "aye", "B" => "bee", "C" => "see"]
      end

      it "is equivalent to repeatedly using #put" do
        @hash.should == Hamster::Hash[].put("A", "aye").put("B", "bee").put("C", "see")
      end

    end

  end

end