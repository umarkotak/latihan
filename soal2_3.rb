def multiplication (m,n)

	arr = []

	for i in 1..m do 
		hasil = n * i
		arr<<hasil
	end

	hasil = arr.join(" ")

	puts hasil

	
end


def multi(m,n)
	(1..m).map {|counter| n*counter}
end


multiplication(3, 5)
multiplication(4, 6)
multiplication(3, 10)

print multi(3, 5)

# will return [5, 10, 15]

# Clue:
# In Ruby, to concat an array:
# arr = []
# arr << 1
# arr << 2
# will return [1, 2]


# counter akan dikalikan dengan n,
# dimana nilai counter berasal dari (1..m)