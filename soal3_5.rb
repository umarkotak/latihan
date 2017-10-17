# def deep_count(arr)
# 	count = 0
# 	count += arr.size

# 	arr.each { 
# 		|x| count += deep_count(x) if x.is_a?(Array) 
# 	}

# 	count
# end

# def deep_count(a)
#   counter = 0
#   counter += a.size
#    a.each { |x| counter += deep_count(x) if x.class == Array }
#    counter
# end

# def deep_count(arr)
# 	count = 0

# 	arr.each { |ele|
# 		count += 1
# 		if ele.class == Array
# 			count += deep_count(ele) if ele.empty? == false
# 		end
# 	}

# 	count	
# end

def deep_count(a)
  count = 0
  a.each { |i|
  count += 1
  if i.class == Array
    count += deep_count(i) if i.empty? != true
  end
  }
  count
end

# def deep_count(a)
#   count = 0
#   if !a.empty?
#     a.each do |e|
#       count += 1
#       if e.is_a?(Array)
#         count += deep_count(e)
#       end
#     end
#   end
#   count
# end

# arr = [1,2,3]
# print arr.reduce {|memo, elmt| memo += elmt}

puts deep_count([[]])
puts deep_count([1, 2, 3])
puts deep_count([1, 2, [3, 4, [5]]])
puts deep_count([[[[[[[[[]]]]]]]]])

# coba =[1, 2]
# p coba[0].empty?