# counter = 1
# until counter>10
# 	puts counter
# 	counter += 1
# end

# counter = 2
# begin
# 	puts counter
# 	counter  += 1
# end until counter > 10 #at least dijalanin sekali

# for i in 1..10 do   # gapake do juga bisa
# 	puts i
# end

# for i in 1...10 do
# 	puts i
# end

counter = 1

loop do
	puts counter
	counter += 1
	break if counter == 10
end

# 10.times do |counter|   # dari 0
# 	puts counter
# end

# 10.times do             # dari 1
# 	puts "hello"
# end

# 10.downto(1) do |counter|
# 	puts counter
# end

# 1.upto(10) do |counter|
# 	puts counter
# end