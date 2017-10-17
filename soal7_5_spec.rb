require './soal7_5.rb'

RSpec.describe FindPalindromes do
  describe "find" do
    it "return nilai palindrom" do
      find_palindromes = FindPalindromes.new
      expect(find_palindromes.find(100, 2)).to eq([101, 111])
    end

    it "return nilai palindrom" do
      find_palindromes = FindPalindromes.new
      expect(find_palindromes.find(22, 3)).to eq([22, 33, 44])
    end
  end  
end