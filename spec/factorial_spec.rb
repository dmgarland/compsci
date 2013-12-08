require 'spec_helper'

describe Factorial do

  context "Factorial 5" do
    before do
      @total = Factorial.to(5)
    end

    it "should be a smallish number" do
      @total.should eq(120)
    end
  end

  context "Factorial 25" do
    before do
      @total = Factorial.to(25)
    end

    it "should be a big number" do
      @total.should eq(15511210043330985984000000)
    end
  end
end
