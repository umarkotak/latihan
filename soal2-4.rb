# Checkerboard is colored with red [r] and blue [b]
# The top left of checkerboard should always be filled with [r]
# You should assume the size input is always an integer
# You should not assume the size input is always positive number
# Input size of <= 0 will return an empty string

def checkerboard(size)

	checker = 1
	for i in 1..size do
		for j in 1..size do
			if checker == 1 
				print "[r]"
				checker = 0
			else
				print "[b]"
				checker = 1
			end
		end
		puts "\n"
	end 
	
end

checkerboard(4)
# will return:
# [r][b][r][b][r]
# [b][r][b][r][b]
# [r][b][r][b][r]
# [b][r][b][r][b]
# [r][b][r][b][r]

# Clue:
# In Ruby, to add new line you can use "\n"
# puts "a\nb"
# will return
# a
# b