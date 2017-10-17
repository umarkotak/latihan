require './soal7_7.rb'

RSpec.describe LetterCount do
  describe "#letter_count" do
    it "returns a hash that shows the number of occurrence of each letter in that string." do
      lettercount = LetterCount.new
      expect(lettercount.letter_count("gojek")).to eq({:g=>1, :o=>1, :j=>1, :e=>1, :k=>1})
    end

    it "returns a hash that shows the number of occurrence of each letter in that string." do
      lettercount = LetterCount.new
      expect(lettercount.letter_count("kolla")).to eq({:k=>1, :o=>1, :l=>2, :a=>1})
    end

    it "returns a hash that shows the number of occurrence of each letter in that string." do
      lettercount = LetterCount.new
      expect(lettercount.letter_count("scholarship")).to eq({:s=>2, :c=>1, :h=>2, :o=>1, :l=>1, :a=>1, :r=>1, :i=>1, :p=>1})
    end
  end
end
