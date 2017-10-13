def kaprekar(angka)
	kuadrat = angka ** 2
	kiri = 0
	kanan = 0
	kiri2 = 0
	kanan2 = 0
	arr = kuadrat.to_s.chars.map {|i| i.to_i}
	
	if arr.size.even?
		kiri = arr[0...(arr.size/2)].join.to_i
		kanan = arr[(arr.size/2)...arr.size].join.to_i
	else
		kiri = arr[0...(arr.size/2)].join.to_i
		kanan = arr[(arr.size/2)...arr.size].join.to_i

		kiri2 = arr[0...(arr.size/2)+1].join.to_i
		kanan2 = arr[(arr.size/2)+1...arr.size].join.to_i
	end

	(kiri + kanan) == angka || (kiri2 + kanan2) == angka ? hasil = true : hasil = false

	puts hasil
end

# 297 is also Kaprekar number since 
# 297 ** 2 = 88209 and 88 + 209 = 297

kaprekar(9)     # return true
kaprekar(46)    # return false
kaprekar(55)    # return true
kaprekar(90)    # return false
kaprekar(297)   # return true
kaprekar(703)   # return true

# 111/111
# 11/111
# 111/11