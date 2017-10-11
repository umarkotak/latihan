def find_occurrence(arr)
	hsh = Hash.new(0)

	arr.each { |i| hsh[i] += 1 }
	hsh.each do |j, k|
		if k.odd?
			return j
			break
		end
	end

	return nil
end

print find_occurrence([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])