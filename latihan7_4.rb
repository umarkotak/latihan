require './latihan7_5.rb'

RSpec.describe DeepCounter do
  describe "#evaluate" do
    it "return the count of elements in an array" do
      deep_counter = DeepCounter.new
      array = ["x", "y,", ["z"]]
      expect(deep_counter.evaluate(array)).to eq(4)
    end

    it "return the count of elements in an empty sub array" do
      deep_counter = DeepCounter.new
      array = [[[[[[[[[]]]]]]]]]
      expect(deep_counter.evaluate(array)).to eq(8)
    end
  end
end