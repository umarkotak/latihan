def format_phone_number(digit)

	str = "("

	# for i in 0..2 do
	# 	str += digit[i].to_s
	# end

	# str += ") "
	
	# for i in 3..5 do
	# 	str += digit[i].to_s
	# end
	
	# str += "-"
	
	# for i in 6..digit.size-1 do
	# 	str += digit[i].to_s
	# end

	for i in 0..digit.size-1 do

		str += digit[i].to_s

		i == 2 ? str += ") "

		i == 5 ? str += "-"



	end	

	puts str


end

format_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
# will return "(123) 456-7890"