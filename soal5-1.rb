# def as(besar)

# 	count = 1
# 	n = 2
# 	y = besar
# 	y = besar + 1 if besar.odd?
# 	x = (y/n).ceil
# 	x += 1

# 	for i in 1..besar do

# 		if i != x 
# 		for j in i...besar do
# 			print "-"
# 		end

# 		for j in 1..count do
# 			if j > 1 && j < count  
# 				print "-"
# 			else
# 				print "A"
# 			end

# 		end

# 		puts "\n"
# 		else
# 			for j in i...besar do
# 				print "-"
# 			end

# 			for j in 1..count
# 				if j.odd?
# 					print "A"
# 				else
# 					print "-"
# 				end
# 			end

# 			puts "\n"


# 		end
# 		count += 2
# 	end

# end

def as(besar)
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

	print str
end

print "Masukkan ukuran huruf A : "
ukuran = gets.chomp
as(ukuran)

# ---A
# --A-A
# -A-A-A
# A-----A
