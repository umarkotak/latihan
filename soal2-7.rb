def descending(number)
	angka = number.to_s
	arr = []
	arr = angka.split("").map { |x| x.to_i  }
	arr.sort! { |x,y| y <=> x }
	out = arr.join("")
	out.to_i
	puts out

	# str = number.to_s
	# str.chars.sort.reverse.join()

end

descending(21445) # will return 54421
descending(145263) # will return 654321
descending(1254859723) # will return 9875543221

# Clue:
# You need to convert the integer to string using ".to_s" method
# then look for suitable methods from Ruby API doc for String and Array
# to convert the string to array of chars, sort it, and join it
# finally, convert it back to integer with ".to_i" method