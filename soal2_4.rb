# Checkerboard is colored with red [r] and blue [b]
# The top left of checkerboard should always be filled with [r]
# You should assume the size input is always an integer
# You should not assume the size input is always positive number
# Input size of <= 0 will return an empty string

def checkerboard(size)

	for i in 1..size do
		
		i % 2 == 0 ? checker=0 : checker=1

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


def checkerboard2(size)

	board=""
	for i in 1..size*size
		i.odd? ? board += "[r]" : board += "[b]"
		board += "\n" if i%size == 0
	end

	puts board

end

def checkerboard3(size)
	return nil if size.nil?
  board=""
  size = 0 if size <= 0 
	for i in 1..size*size
		i.odd? ? board += "[r]" : board += "[b]"
		board += "\n" if i%size == 0
	end

	puts board
end

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

checkerboard3()