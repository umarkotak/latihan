def roman_numeral(angka)
	
	roman = ""
	satuan = 0
	puluhan = 0
	ratusan = 0
	ribuan = 0

	dI = angka if angka <= 3
	dI.times do 
		roman += "I" 
	end
	
	puts roman
end
	 
roman_numeral(1)        # return I
roman_numeral(2)        # return II
# roman_numeral(9)        # return IX
# roman_numeral(26)       # return XXVI
# roman_numeral(141)      # return CXLI

# 1 = I
# 5 = V
# 10 = X
# 50 = L
# 100 = C
# 500 = D
# 1000 = M
# 