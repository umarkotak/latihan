# class Person

# 	def initialize(nama)
# 		@nama = nama
# 	end

# 	def nama
# 		@nama
# 	end
# 	# getter buat lempar keluar

# 	def nama=(str)
# 		@nama = str
# 	end
# 	# setter buat masukin kedalam

# end

# person = Person.new("umar")

# puts "Hello, my name is #{person.nama}"

# person.nama = "zues"

# puts "Hello, my name is #{person.nama}"

# variable pake @ adalah instance variable

# ===========================================

# class Person
# 	attr_reader :nama
# 	attr_writer :nama

	# digabung jadi attr_accessor :nama
	# attr_accessor :nama

# 	def initialize(nama)
# 		@nama = nama
# 	end
# end

# person = Person.new("umar")
# person.nama = "zues"

# puts "Hello, my name is #{person.nama}"

# ===========================================

# class Person
# 	attr_accessor :nama
# 	@@people_count = 0

# 	def initialize(nama)
# 		@nama = nama
# 		@@people_count += 1
# 	end

# 	def self.people_count
# 		@@people_count
# 	end
# end
# class variable bisa di pake sampe tingkat class
# puts Person.people_count manggil dari class

# ===========================================

# $earth_circumference = 4000
# # global variable menggunakan tanda dolar $

# class Person
# 	attr_accessor :nama
# 	@@people_count = 0

# 	def initialize(nama)
# 		@nama = nama
# 		@@people_count += 1
# 	end

# 	def self.people_count
# 		@@people_count
# 	end

# 	def self.show_population
# 		puts "
# 		there ae a total of#{@@people_count} people_count
# 		in this whole #{$earth_circumference} km of earth circumference
# 		"
# 	end
# end

# person1 = Person.new("Umar")
# person2 = Person.new("Joko")

# puts "#{Person.people_count}"
# puts "we can access it in from outside of classes too: #{$earth_circumference}"

# $earth_circumference = 1000
# puts "#{$earth_circumference}"

# ===========================================

# puts 1.0.is_a?(Float)
# puts 1.0.is_a?(Numeric)
# puts 1.0.class
# puts 1.0.class.superclass

# kelas bisa turunan

# puts Float.superclass
# puts Numeric.superclass
# puts Object.superclass

# ===========================================

# class NyArray < Array

# end
# NyArray memiliki turunan atau kemampuan dari kelas diatasnya yaitu array

# a = NyArray.new([1,2,3])
# a.map { |i| i + 1 }
# puts a.classes

# ===========================================

# class Rectangle
# 	attr_accessor :length
# 	attr_accessor :breadth

# 	def initialize(length, breadth)
# 		@length = length
# 		@breadth = breadth
# 	end

# 	def perimeter
# 		2 * (@length + @breadth)
# 	end

# 	def hehe(angka, b)
# 		angka + b
# 	end

# end

# class Square < Rectangle

# 	# attr_accessor :side

# 	def initialize(side)
# 		@length = side
# 		@breadth = side
# 	end
# end

# rectangle1 = Rectangle.new(2,2)
# square1 = Square.new(4)
# puts "#{rectangle1.hehe(5,6)}"
# puts "#{rectangle1.perimeter}"
# puts "#{square1.perimeter}"
# # square1.side = 5
# puts "#{square1.side}"

# ===========================================

# class Fixnum
# 	def +(other)
# 		42
# 	end
# end
# overriding mengubah method + jadi apa aj yg di + hasilnya 42

# ===========================================

# class NyArray < Array
# 	def map
# 		puts "map nya hilang bro"
# 	end
# end

# a = Array.new([1,2,3])
# puts a.map { |e| e * 2 }

# b = NyArray.new([1,2,3])
# puts b.map { |e| e * 2 }

# overriding, mthod yang ada pada parrent class ditiban oleh yg baru pada turunannya

# ===========================================

# class Animal
# 	def move
# 		"I can move"
# 	end
# end

# class Bird < Animal
# 	def move
# 		super + " by flying"
# 	end
# end

# puts Animal.new.move
# puts Bird.new.move

# # prnggunaan super,method atas di override ditambah dengan line baru

# ===========================================

# class Matrix < Array
# 	def +(other)
# 		for i in 0...self.size do
# 			self[i] = self[i] + other[i]
# 		end
# 		self
# 	end
# end

# class Matrix < Array
# 	def +(other)
# 		i = 0
# 		self.each do |e|
# 			self[i] = e + other[i]
# 			i += 1
# 		end
# 		self
# 	end
# end

# ===========================================

# class Matrix < Array
# 	def +(other)
# 		arr = []
# 		for i in 0...self.size do
# 			arr[i] = self[i] + other[i]
# 		end
# 		arr
# 	end

# 	def *(other)
# 		arr = []
# 		for i in 0...self.size do
# 			arr[i] = self[i] * other[i]
# 		end
# 		arr
# 	end

# 	def /(other)
# 		arr = []
# 		for i in 0...self.size do
# 			arr[i] = self[i].to_f / other[i].to_f
# 		end
# 		arr
# 	end

# 	def -(other)
# 		arr = []
# 		for i in 0...self.size do
# 			arr[i] = self[i] - other[i]
# 		end
# 		arr
# 	end
# end

# a = Matrix.new([1,2])
# b = [3,4]

# puts a + b
# puts a * b
# puts a - b
# puts a / b

# ===========================================

class Person
	attr_accessor :nama
	@@people_count = 0

	def initialize(nama)
		@nama = nama
		@@people_count += 1
		@person_id = @@people_count
	end

	def self.people_count
		@@people_count
	end

	def introduce
		puts "Hello my name is #{@nama}"
	end

	def print_person_id
		puts "the person id of this person is #{person_id}"
	end

private
	
	def person_id
		@person_id
	end

end

person = Person.new("umar")
person.introduce
# person.person_id 
person.print_person_id
# puts Person.people_count

# ===========================================

# buat class namanya point
# punya 2 atribut, (x, y)
# buat beberapa method
# 1. quadran
# return berupa integer lokasi quadran
# 2. overide method print
# return berupa string (x, y)
# 3. move right
# 4. move left
# 5. move up
# 6. move down
# menerima 1 parameter point, untuk pergerakan sesuai dengan methodnya

# buat class line 
# punya 2 atribut yaitu (start, end) berupa point
# buat method
# 1. length mengembalikan panjang berupa float
# 2. gradien garis
# 3. up
# 4. down
# 5. left
# 6. right
# sampe besok
