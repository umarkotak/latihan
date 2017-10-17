
# will return: "hello world"

# Clue: 
# In Ruby, you can concat a string like this:
# str = "hello"
# str += " " 
# str += "world"
# will return "hello world"

def create_sentence(words)

	str=""
	for i in 0..words.size-1 do
		str+=words[i]
		str+=" "

	end

puts str
	
end

create_sentence(["hello", "world"])
create_sentence(["m", "umar", "ramadhana"])