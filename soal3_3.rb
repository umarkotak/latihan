def find_longest(data)
  arr = data.map {|i| i.to_s}
  max = arr[0].length
  found = 0
  arr.each {|i| max = i.length if i.length > max }

  print arr.select {|i| found = 1 if i.length == max && found == 0}
end

# def find_longest(data)
#   long = data[0].to_s.length
#   data.each { |x| long = x if x.to_s.length > long}
#   print long
# end

# def find_longest(data)
#   arr.max_by {|| num.to_s.size}
# end

find_longest([1, 10, 100])
find_longest([8, 900, 100])