# print "Input your name:"
# name = gets.chomp
# print "Input your age:"
# age = gets.chomp

# print "Your name is #{name} and your age is #{age}"

# ===========================

# To integer
# print "Input a number:"
# number = gets.chomp.to_i

# print "The power of the number you just input is #{number ** 2}"

# # To float
# print "Input a number:"
# number = gets.chomp.to_f

# print "The power of the number you just input is #{number ** 2}"

# ===========================

# first, second, third = ARGV

# puts "Your first variable is: #{first}"
# puts "Your second variable is: #{second}"
# puts "Your third variable is: #{third}"

# input dengan ruby latiha5-1.rb a b c -> akan masuk ke first second third
# kalo yang di ARGV, dia ambil input dari sesudah nama file .rb

# ===========================

# require 'date'

# user_name = ARGV.first # gets the first argument
# prompt = '> '

# puts "Hi #{user_name}."
# puts "I'd like to ask you a few questions."
# puts "In what year were you born, #{user_name}? "
# puts prompt
# year = $stdin.gets.chomp.to_i

# puts "Alright, so you're #{Date.today.year - year} years old now."

# ===========================

# filename = ARGV.first

# # Here is how you open a file in Ruby
# input_stream = open(filename)
# puts "Here's your file #{filename}:"

# # Here is how you read the content of a file in Ruby
# content = input_stream.read
# print content

# # Don't forget to close the file
# input_stream.close

# ini akan memngambil data file eksternall sesuai dengan argv yang kita tuliskan
# ruby teks1.txt -> akan membaca teks1

# ===========================

# filename = ARGV.first

# # Here is how you open a file in Ruby
# input_stream = open(filename)
# puts "Here's your file #{filename}:"

# # Here is how you read the content of a file in Ruby
# i = 0
# input_stream.each do |line|
#   i += 1
#   print "Line #{i}: #{line}"
# end

# # Don't forget to close the file
# input_stream.close

# membaca file line by line

# ===========================

# filename = ARGV.first

# # Here is how you open a file in write mode in Ruby
# output_stream = open(filename, "w")

# # Here is how you read the content of a file in Ruby
# output_stream.write("This is just a test text.")

# # Don't forget to close the file afterward
# output_stream.close

# membuat teks file dengan nama argv kita

# ===========================

# filename = ARGV.first

# # Here is how you open a file in write mode in Ruby
# output_stream = open(filename, "w")

# # Here is how you read the content of a file in Ruby
# output_stream.write("Actually it's just the same.\n")
# output_stream.write("It's as if we're just writing string with proper newlines etc.\n")
# output_stream.write("Only, instead of printing it to a screen, we write it to a file.\n")

# # Don't forget to close the file afterward
# output_stream.close

# # membuat file baru dengan beberapa line, sama aja tinggal ditambah \n

# ===========================

