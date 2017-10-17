def high_and_low(number)
arr = number.split(" ")
max = arr[0].to_i
min = arr[0].to_i
ret = ""

arr.each {|i| max = i.to_i if i.to_i > max }
arr.each {|i| min = i.to_i if i.to_i < min }

max == min ? ret = "#{max}" : ret = "#{max} #{min}" 
puts ret
end

def high_and_low2(number)
	arr = number.split(" ").map {|i| i.to_i }
	puts "#{arr.max} #{arr.min}"
end

high_and_low2("4 5 29 54 4 0 -214 542 -64 1 -3 6 -6")
high_and_low("1 -1")
high_and_low("42 42")
high_and_low("51")