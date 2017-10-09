def mix_fruit(fruits)
  price = 0
  jumlah_buah = 0
  normal_fruit = ["banana","orange","apple","lemon","grapes"]
  special_fruit = ["mango","avocado","strawberry"]
  
  fruits.each do |fruit|

  	buah = fruit.downcase
  	
  	  case buah
  	  when buah = "banana"
  	  	price = price + 5

  	  when buah = "orange"
  	  	price = price + 5

  	  when buah = "apple"
  	  	price = price + 5

  	  when buah = "lemon"
  	  	price = price + 5

  	  when buah = "grapes"
  	  	price = price + 5

  	  when buah = "mango"
  	  	price = price + 7
  	  
  	  when 
  	  	fruit = "avocado"
  	  	price = price + 7

  	  when buah = "strawberry"
  	  	price = price + 7
  	  
  	  else
  	  	price = price + 9
  	  end

  	# if normal_fruit.include? buah
  	# 	price = price + 5
  	# elsif special_fruit.include? buah
  	# 	price = price + 7
  	# else
  	# 	price = price + 9
  			
  	# end

  	# puts price
  end

  bayar = price/fruits.size.round

  puts bayar

  # your code here
  # clue: use ".size" method to get the size of an array
end

mix_fruit(["banana","mango","avocado"]) # will resturn: 6
mix_fruit(["melon","Mango","kiwi"]) # will resturn: 8
mix_fruit(["watermelon","cherry","avocado"]) # will resturn: 8
mix_fruit(["watermelon","lime","tomato"]) # will resturn: 9
mix_fruit(["blackBerry","coconut","avocado"]) # will resturn: 8
mix_fruit(["waterMelon","mango"]) # will resturn: 8
mix_fruit(["watermelon","pEach"]) # will resturn: 9
mix_fruit(["watermelon","Orange","grapes"]) # will resturn: 6
mix_fruit(["watermelon"]) # will resturn: 9
mix_fruit(["BlACKbeRrY","cOcONuT","avoCaDo"]) # will resturn: 8
