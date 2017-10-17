# BLOCK PROCK LAMBDA
# block ->
# nameless method, block antara { dan }
# atau antara do dan end

# def accept_block
# 	puts "haloww method 1"
# 	puts "halloww method 2"
# 	yield
# 	puts "ehehehe"
# end

# accept_block { puts "wew" }

# yield memungkinkan method menndapat parameter dari block

# def yield_name(nama)
# 	puts "abcde"
# 	yield("kim")
# 	puts "effgggg"
# 	yield(nama)
# 	puts "EEEEEEEEEEEEEWWW"
# end

# yield_name("umar") { |n| puts "my name is #{n}" }

# PROCK BISA DIANGGAP BLOK YANG DISIMPAN

# multiple_of_3 = Proc.new do |n|
# 	n % 3 == 0
# end

# print (1..100).to_a.select( &multiple_of_3 )

# print (1..100).to_a.select { |n| n%3 == 0 }

# cube = Proc.new { |x| x ** 3 }
# [1, 2, 3].collect( &cube )
# p cube.methods cube.class

# hi = Proc.new{ puts "hello" }
# hi.call

# numbers_array = [1,2,3,4,5,6,7]
# numbers_array.map(&:to_s)
# p numbers_array

# LAMBDA KAYA PROC 

# a = lambda { puts "hellow" }

# p a.class
# a.call

# string = ["umar", "firman", "rehan"]
# symbolize = lambda { |n| n.to_sym }

# symbols = string.collect(&symbolize)
# print symbols

# l = lambda { |name| puts "hello #{name}" }
# l = -> name { puts "hello #{name}" }
# l = lambda { |name="umar"| puts "hello #{name}" }
# pe = Proc.new { |name| puts "hello #{name}" }

# l.call("umar")
# pe.call("umar")

# # lambda akan return error jika parameter tidak sesuai

# l.call()
# pe.call()

def b_v_s_proc
	victor = Proc.new { return "batman win" }
	victor.call
	"superman win"
end

def b_v_s_lambda
	victor = lambda { return "batman win" }
	victor.call
	"superman win"
end

puts b_v_s_proc
puts b_v_s_lambda