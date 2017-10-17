# Since we have not learned about basic data types and loop in Ruby
# you can follow this skeleton

def reverse_words(sentence)
  words = []
  sentence.split(' ').each do |word|
    # your code here
    # clue:
    # 1. You can find the number of characters in a word using ".length" or ".size"
    # 2. You can reverse a string by using ".reverse"
    # 3. You can add element to an array using "<<"
    word = word.reverse if word.size >= 5
    words << word
  end
  words.join(' ')
end

puts reverse_words('Hey fellow scholars') # returns "Hey wollef sralohcs"
puts reverse_words('This is a test') # returns "This is a test"
puts reverse_words('his is another test') # returns "This is rehtona test"
