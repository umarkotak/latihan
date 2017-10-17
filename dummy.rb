# def foo(x,a,b,i,j)
#    k = j
#    ct = 0
#    while k > i-1
#        if x[k] <= b && !(x[k] <= a)
#            ct = ct + 1
#        end
#        k = k - 1
#    end
#    return ct
# end

# x = [11,12,10,5,17,15,20,10,17,11]
# print(foo(x,8,18,3,6))
# print(foo(x,10,20,0,9))
# print(foo(x,8,18,6,3))
# print(foo(x,20,10,0,9))
# print(foo(x,6,7,8,8))

# def g(str)
#   i = 0
#   new_str = ""
#   while i < str.length - 1
#       new_str = new_str + str[i + 1]
#       i = i + 1
#   end
# 	new_str
# end

 

# def f(str)
#   if str.length == 0
#       return ""
#   elsif str.length == 1
#       return str
#   else
#       return f(g(str)) + str[0]
#   end
# end

# def h(n,str)
#   while n != 1
#       if n % 2 == 0
#           n = n/2
#       else
#           n = 3*n + 1
#       end
#       str = f(str)
#   end
#   return str
# end
 
# def pow(x,y)
#   if y == 0
#       return 1
#   else
#       return x*pow(x, y-1)
#   end
# end

 

# # puts(h(1, "fruits"))
# puts(h(2, "fruits"))
# # puts(h(3, "fruits"))
# puts(h(4, "fruits"))
# # puts(h(5, "fruits"))
# puts(h(6, "fruits"))
# # puts(h(7, "fruits"))
# puts(h(8, "fruits"))
# puts(h(10, "fruits"))

# print(h(1, "fruits"))

# print(h(2, "fruits"))

# print(h(6, "fruits"))

# print(h(pow(2, 1000000000000000), "fruits"))
# # fruits

# print(h(pow(2, 9831050005000007), "fruits"))
# # stiurf

def evaluate(arr)
  count = 0
  arr.each do |i|
    count += 1
    if i.class == Array
      count += evaluate(i) if i.empty? != true
    end
  end
  count
end

puts deep_count(["x", "y,", ["z"]])