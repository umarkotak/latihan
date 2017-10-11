def deep_count(arr)
	count = 0
	count += arr.size

	arr.each { 
		|x| count += deep_count(x) if x.is_a?(Array) 
	}

	count
end

# arr = [1,2,3]
# print arr.reduce {|memo, elmt| memo += elmt}

print deep_count([[]])
print deep_count([1, 2, 3])
print deep_count([1, 2, [3, 4, [5]]])
print deep_count([[[[[[[[[]]]]]]]]])