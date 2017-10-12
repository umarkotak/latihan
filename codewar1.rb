def spiral(size)
	grafik = Array.new(size+1, Array.new(size+1, 0))

	for i in 1..size do
		for j in 1..size do
			
			print grafik[i][j]
		end
		puts
	end
	grafik
end

spiral (5)