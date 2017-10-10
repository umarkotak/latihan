def find_palindrome(m,n)
	counter = 1
	while counter <= n
		pal = m.to_s
		if pal == pal.reverse
		 	print pal+" "
		 	counter += 1
		end		
		m += 1
	end
	puts
end

def find_palindrome2(m,n)
	counter = 1
	arr = []
	while counter <= n
		pal = m.to_s
		if pal == pal.reverse
		 	arr << pal
		 	counter += 1
		end		
		m += 1
	end
	hasil = arr.join(" ")
	hasil
end

puts find_palindrome2(100, 2)
# will return [101, 111]

find_palindrome(22, 3)
# will return [22, 33, 44]

# Clue:
# You may need a method ".reverse" 
# from String data type here