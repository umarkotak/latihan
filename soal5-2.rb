def as(besar)
	filename = "tout_Apple.txt"
	output_stream = open(filename, "w")
	besar = besar.to_i
	str = ""
	count = 1
	# besar.odd? ? mid = besar + 1 : mid = besar
	besar.odd? ? mid = besar - 1 : mid = besar
	x = (mid/2).ceil + 1

	for i in 1..mid do
 
		for j in i...mid do
			str += "-"
		end

		if i != x
			for j in 1..count do
			  j > 1 && j < count ?	str += "-" : str += "A"
			end
		else
			for j in 1..count
				j.odd? ? str += "A" : str += "-"
			end
		end

		str += "\n"
		count += 2
	end

	output_stream.write(str)
end

print "Masukkan ukuran huruf A : "
ukuran = gets.chomp
as(ukuran)

# ---A
# --A-A
# -A-A-A
# A-----A
