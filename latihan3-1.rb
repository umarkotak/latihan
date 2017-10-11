# arr = [1,2,3]
# print arr
# puts

# arr = %(this is a text)
# arr = %w(this is a text)
# print arr
# puts

# arr = Array.new(3)
# arr = Array.new(3, 5)      #object id sama, terhubung
# arr = Array.new(3) { 5 }   #object id beda, terpisah
# print arr
# puts

# arr = Array.new(3, "abc")
# print arr
# puts
# arr[0].upcase!
# print arr
# puts
# arr[1] = "xyz"
# print arr
# puts

# arr = Array.new(3) { "abc" }
# print arr
# puts
# arr[0].upcase!
# print arr
# puts
# arr[1] = "xyz"
# print arr
# puts

# i = 1
# arr = Array.new(4) { Array.new(4) { i += 1 } }
# print arr

# arr = [1,2,3]
# arr << 4
# arr.push 5
# print arr
# puts

# print [1,2,3,4][1]
# print [1,2,3,4].at(3)
# print [1,2,3].first        #return int
# print [1,2,3].first(3)     #return array
# print [1,2,3].last

# print ["abc","xyz"][1][0,1]  #output x

# print (1..5)
# print (1..5).class    # range
# print (1..5).to_a
# print (1...5)         # 5 tidak termasuk

# print ["a", "b", "c", "d"][0..2]

# arr[2,0] = "dog"       # melakukan insert ke index 2

# arr = [1, 3, 5, 7, 9]
# arr[2, 3] = "cat"
# arr[2, 0] = "dog"
# arr[1, 1] = [9, 8, 7]
# # arr[1, 1] = "wew"
# arr[0..3] = []
# arr[5..6] = 99, 98

# arr = [1, 2, 3, 4, 5].map { |i| i+1 }
# arr = [1, 2, 3, 4, 5].map { |i| i = i * 3 }
# arr = [1, 2, 3, 4, 5].collect() {|i| i+1}
# arr = [1, 2, 3, 4, 5].collect(&:to_s)

# arr = [1,2,3,4,5,6].select {|number| number.even?}
# regions = ["senen", "menteng", "gambir", "cikini", "pluit"]
# print regions.select {|reg| reg.size >= 6}
# print regions.reject {|reg| reg.size >= 6}
# print regions.keep_if {|reg| reg.size >= 6}
# print regions.delete_if {|reg| reg.size >= 6}

# arr.delete()
# arr.delete_at()
# arr.delete_if

# arr = ["umar", "firman", "rehan"]
# for i in arr
# 	puts "My name is #{arr[i]}"
# end

# arr.each_with_index {|item, index| p "#{index+1}. #{item}"}

# 123456.to_s.chars
# 123456.to_s.split("")

print arr