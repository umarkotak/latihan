class LetterCount
  def letter_count(kata)
      hsh = Hash.new(0)
    kata.to_s.chars { |i| hsh[i.to_sym] += 1 }
    hsh
  end
end