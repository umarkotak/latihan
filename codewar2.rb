# describe "Basic Tests" do
#   it "should pass basic tests" do
#     Test.assert_equals(high('man i need a taxi up to ubud'), 'taxi')
#     Test.assert_equals(high('what time are we climbing up the volcano'), 'volcano')
#     Test.assert_equals(high('take me to semynak'), 'semynak')
#   end
# end

def high(x)
	maxw = 0
	str = "" 
	arr = x.split(" ")
	arr.map { |i| 
		newarr = i.chars
		angka = 0

		newarr.each { |j| 
			case j
			when "a"
				angka += 1
			when "b"
				angka += 2
			when "c"
				angka += 3
			when "d"
				angka += 4
			when "e"
				angka += 5
			when "f"
				angka += 6
			when "g"
				angka += 7
			when "h"
				angka += 8
			when "i"
				angka += 9
			when "j"
				angka += 10
			when "k"
				angka += 11
			when "l"
				angka += 12
			when "m"
				angka += 13
			when "n"
				angka += 14
			when "o"
				angka += 15
			when "p"
				angka += 16
			when "q"
				angka += 17
			when "r"
				angka += 18
			when "s"
				angka += 19
			when "t"
				angka += 20
			when "u"
				angka += 21
			when "v"
				angka += 22
			when "w"
				angka += 23
			when "x"
				angka += 24
			when "y"
				angka += 25
			when "z"
				angka += 26
			end
		}
		if angka > maxw
			maxw = angka
			str = i
		end

	}

	str
end

high('man i need a taxi up to ubud')
high('what time are we climbing up the volcano')
high('take me to semynak')