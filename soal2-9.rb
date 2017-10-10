def union_jack(n)

	if n.class == Integer || n.class == Float
	n = n.ceil	
		n = 7 if n < 7
		mid = (n+1)/2.ceil

		n % 2 == 0 ? r = 1 : r = 0

		for i in 1..n do
			for	j in 1..n do
				if i == j || j == n+1-i || (j >= mid && j <= mid+r) || (i >= mid && i <= mid+r)
					print "X"
				else
					print "-"
				end
			end	
			puts "\n"
		end

	else
		puts "false"	
	end
	
end

# any number < 7 will return 7x7 flag
union_jack(7)
"X--X--X
-X-X-X-
--XXX--
XXXXXXX
--XXX--
-X-X-X-
X--X--X"

# even number > 7 will return n x n flag with two rows center
union_jack(10)
"X---XX---X
-X--XX--X-
--X-XX-X--
---XXXX---
XXXXXXXXXX
XXXXXXXXXX
---XXXX---
--X-XX-X--
-X--XX--X-
X---XX---X"

# non numeric argument will return "false"
union_jack("hello") # return "false"

union_jack(7.8)