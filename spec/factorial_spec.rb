require 'spec_helper'

describe Factorial do

  before do
    @total = Factorial.to(25)
  end

  it "should be a big number" do
    @total.should eq(15511210043330985984000000)
  end
end
