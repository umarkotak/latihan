def palindrome?(kalimat)
	kalimata = kalimat.gsub!(/\W+/, '').downcase
	kalimatr = kalimata.reverse

	kalimata == kalimatr ? hasil = true : hasil = false
	puts hasil
end

palindrome?("Race fast safe car")    # true
palindrome?("Live not on evil")      # true
palindrome?("Live free or die hard") # false