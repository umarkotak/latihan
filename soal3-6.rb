# def group_and_count(input)
#   hsh = {}
#   input.each do |i| 
#     if hsh.each_key.include?(i)
#       hsh[i] += 1
#     else
#       hsh[i] = 1
#     end
#   end

#   hsh
# end

# def group_and_count(input)
#   hsh = {}
#   input.each { |i| hsh.each_key.include?(i) ? hsh[i] += 1 : hsh[i] = 1 }
#   hsh
# end

def group_and_count(input)
  hsh = Hash.new(0)
  input.each { |i| hsh[i] += 1 }
  hsh
end

# def group_and_count(arr)
#   hsh = Hash.new
#   arr.each{ |x| hsh[x] = arr.count(x) }
#   hsh
# en

input = [1,1,2,2,2,3]
puts group_and_count(input)