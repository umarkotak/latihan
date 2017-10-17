require './soal7_6.rb'

RSpec.describe DescendingOrder do
  describe "#descending" do
    it "return urutan descending" do
      descending_order = DescendingOrder.new
      expect(descending_order.descending(21445)).to eq(54421)
    end

    it "return urutan descending" do
      descending_order = DescendingOrder.new
      expect(descending_order.descending(145263)).to eq(654321)
    end

    it "return urutan descending" do
      descending_order = DescendingOrder.new
      expect(descending_order.descending(1254859723)).to eq(9875543221)
    end
  end
end