# def roman_numeral(angka)
	
# 	roman = ""
# 	satuan = 0
# 	puluhan = 0
# 	ratusan = 0
# 	ribuan = 0

# 	dI = angka if angka <= 3
# 	dI.times do 
# 		roman += "I" 
# 	end
	
# 	puts roman
# end

def roman_numerals(number)
	roman_numeral = ""
	roman_numbers = { 1 => "I",
										5 => "V",
										10 => "X",
										50 => "L",
										100 => "C",
										500 => "D" }

	if roman_numbers.has_key?(number)
		roman_numeral += roman_numbers[number]
	else
		unit = 10 ** (number.to_s.length - 1)
		head = number / unit

		if (head == 4)
			roman_numeral += roman_numbers[unit] + roman_numbers[5*unit]
		elsif (head >= 6 && head <= 8)
			roman_numeral += roman_numbers[5*unit] + ( roman_numbers[unit] * (head - 5))
		elsif (head == 9)
			roman_numeral += roman_numbers[unit] + roman_numbers[10 * unit]
		else
			roman_numeral += roman_numbers[unit] * head	
		end
		
		tail = number % unit
		if tail != 0
			roman_numeral += roman_numerals(tail)
		end

	end

	# puts roman_numeral
	roman_numeral

end

# bikin return,
# bikin dictionary
# ambil kasus paling gampang pada dictionary
# biasakan pecah kasus yang lebih mudah dulu

puts roman_numerals(5)        # return I
puts roman_numerals(20)        # return II
puts roman_numerals(32)
puts roman_numerals(9)        # return IX
puts roman_numerals(28)       # return XXVI
puts roman_numerals(141)      # return CXLI
puts roman_numerals(427)      # return CXLI

# 1 = I
# 5 = V
# 10 = X
# 50 = L
# 100 = C
# 500 = D
# 1000 = M
# 