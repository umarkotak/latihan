# Since we've not learned about array in Ruby,
# instead of using array, 
# you can work with the following skeleton
def pattern(n)
  str = ""
  for i in 1..n do
    
    i.times do
      str += i.to_s
      # str += "#{i}"
    end
    str += "\n"
  end
  
  puts str
end

pattern(1) # will return:
# 1

pattern(2) # will return:
# 1
# 22

pattern(3)