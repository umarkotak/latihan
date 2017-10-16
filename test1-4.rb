# def array_of_fixnums?(arr)
# 	cek = 0
# 	arr.map { |i| cek += 1 if !i.is_a?(Numeric) }
# 	cek == 0 ? hasil = true : hasil = false
# 	puts hasil
# end

def array_of_fixnums?(arr)
	all_fixnums = true
	arr.each do |e|
		if !e.is_a?(Numeric)
			all_fixnums = false
		end 
	end
	puts all_fixnums
end

array_of_fixnums?([1, 2, 3])       # return true
array_of_fixnums?(["a", "b", "c"]) # return false
array_of_fixnums?([])              # return true
array_of_fixnums?(["a", 1]) 
array_of_fixnums?([1, "a"]) 