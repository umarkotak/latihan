# ================================== module

# module itu semacam toolbox

module Circle
	PI = 3.14159
	# foo = "jjj" -> gabisa
	# FOO = "jjj" -> bisa karena konstan

	def Circle.area(radius)
		PI * radius ** 2
	end

	def Circle.circumference(radius)
		2 * PI * radius
	end
end

puts Circle::PI
puts Circle::area(7)

puts Circle.area(7)
puts Circle.circumference(7)

# module tidak memiliki instance variable, 

# ==================================

require "date"
puts Date.today

# ==================================

class Angle
	include Math
	attr_accessor :radians

	def initialize(radians)
		@radians = radians
	end

	def cosine
		cos(@radians)
	end

end

acute = Angle.new(0)
puts acute.cosine

# include memiliki scope di class, bisa juga pake require tapi nanti jadi Math.cos()

# ==================================

module Action
	def jump
		@distance = rand(4) + 2
		puts "I jumped forward #{@distance} feet!"
		# dibuat instance sehingga object bisa akses @distance, kalo gapake @ -> distance, maka distance hanya milik jump saja
	end

	def y
		puts @distance
	end
end

class Rabbit
	include Action
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def x
		puts @distance
		# bisa dipanggil karena instance
	end
end

class Cricket
	include Action
	attr_accessor :name
	
	def initialize(name)
		@name = name
	end
end

peter = Rabbit.new("peter")
jiminy = Cricket.new("jiminy")

peter.jump
jiminy.jump
peter.x
peter.y

# perlakuannya mirip aja kaya include di php

# ==================================

module ThePresent
	def now
		puts "A"
	end
end

class TheHereAnd
	extend ThePresent
end

TheHereAnd.now

# semacam include tapi pada level class, cara manggilnya kaya di atas

# ==================================

# 1. buat sebuah fungsi/method yang mengembalikan semua tahun kabisat di abad 20, balikan berupa array.
# 2. ketika dimasukkan sebuah tanggal, keluarkan tanggal dalam format dd/mm/yyyy
# 3. tanpa membuat array, keluarkan semua nama bulan dalam bahasa inggris
# 4. masukkin date today sekarang keluarkan nama bulannya

# ==================================

# CODING CONVENTION IN RUBY

