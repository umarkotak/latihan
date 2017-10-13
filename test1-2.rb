def sum_of_cubes(a, b) 
	hasil = 0
	for i in a..b
		pang3 = i ** 3
		hasil += pang3
	end
	puts hasil
end

sum_of_cubes(1, 3) # return 36 1 + 8 + 27
sum_of_cubes(3, 5) # return 216 27 + 64 + 125
sum_of_cubes(1, 2)